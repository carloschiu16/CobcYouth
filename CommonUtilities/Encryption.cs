using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;

namespace CommonUtilities
{
    public class Encryption
    {
        private static readonly RandomNumberGenerator Random = RandomNumberGenerator.Create();

        private static readonly byte[] cryptKey = Encoding.ASCII.GetBytes("c0dr02jrjpxd7ifwepfsdmclndknknfn");
        private static readonly byte[] authKey = Encoding.ASCII.GetBytes("328ufvn0cnd030cnfn2oxd203xf02rcv");

        //Preconfigured Encryption Parameters
        public static readonly int BlockBitSize = 128;
        public static readonly int KeyBitSize = 256;


        public static string Encrypt(string plainString, byte[] nonSecretPayload = null)
        {
            if (string.IsNullOrEmpty(plainString))
                throw new ArgumentException("Secret Message Required!", "secretMessage");

            var plainText = Encoding.UTF8.GetBytes(plainString);
            var cipherText = Encrypt(plainText, nonSecretPayload);
            return Convert.ToBase64String(cipherText);
        }

        public static string Decrypt(string cipherString, int nonSecretPayloadLength = 0)
        {
            if (string.IsNullOrWhiteSpace(cipherString))
                throw new ArgumentException("Encrypted Message Required!", "encryptedMessage");

            var cipherText = Convert.FromBase64String(cipherString);
            var plainText = Decrypt(cipherText, nonSecretPayloadLength);
            return plainText == null ? null : Encoding.UTF8.GetString(plainText);
        }

        public static byte[] Encrypt(byte[] plainText, byte[] nonSecretPayload = null)
        {
            //User Error Checks
            if (cryptKey == null || cryptKey.Length != KeyBitSize / 8)
                throw new ArgumentException(String.Format("Key needs to be {0} bit!", KeyBitSize), "cryptKey");

            if (authKey == null || authKey.Length != KeyBitSize / 8)
                throw new ArgumentException(String.Format("Key needs to be {0} bit!", KeyBitSize), "authKey");

            if (plainText == null || plainText.Length < 1)
                throw new ArgumentException("Secret Message Required!", "secretMessage");

            //non-secret payload optional
            nonSecretPayload = nonSecretPayload ?? new byte[] { };

            byte[] cipherText;
            byte[] iv;

            using (var aes = new AesManaged
            {
                KeySize = KeyBitSize,
                BlockSize = BlockBitSize,
                Mode = CipherMode.CBC,
                Padding = PaddingMode.PKCS7
            })
            {

                //Use random IV
                aes.GenerateIV();
                iv = aes.IV;

                using (var encrypter = aes.CreateEncryptor(cryptKey, iv))
                using (var cipherStream = new MemoryStream())
                {
                    using (var cryptoStream = new CryptoStream(cipherStream, encrypter, CryptoStreamMode.Write))
                    using (var binaryWriter = new BinaryWriter(cryptoStream))
                    {
                        //Encrypt Data
                        binaryWriter.Write(plainText);
                    }

                    cipherText = cipherStream.ToArray();
                }

            }

            //Assemble encrypted message and add authentication
            using (var hmac = new HMACSHA256(authKey))
            using (var encryptedStream = new MemoryStream())
            {
                using (var binaryWriter = new BinaryWriter(encryptedStream))
                {
                    //Prepend non-secret payload if any
                    binaryWriter.Write(nonSecretPayload);
                    //Prepend IV
                    binaryWriter.Write(iv);
                    //Write Ciphertext
                    binaryWriter.Write(cipherText);
                    binaryWriter.Flush();

                    //Authenticate all data
                    var tag = hmac.ComputeHash(encryptedStream.ToArray());
                    //Postpend tag
                    binaryWriter.Write(tag);
                }
                return encryptedStream.ToArray();
            }

        }

        public static byte[] Decrypt(byte[] cipherText, int nonSecretPayloadLength = 0)
        {

            //Basic Usage Error Checks
            if (cryptKey == null || cryptKey.Length != KeyBitSize / 8)
                throw new ArgumentException(String.Format("CryptKey needs to be {0} bit!", KeyBitSize), "cryptKey");

            if (authKey == null || authKey.Length != KeyBitSize / 8)
                throw new ArgumentException(String.Format("AuthKey needs to be {0} bit!", KeyBitSize), "authKey");

            if (cipherText == null || cipherText.Length == 0)
                throw new ArgumentException("Encrypted Message Required!", "encryptedMessage");

            using (var hmac = new HMACSHA256(authKey))
            {
                var sentTag = new byte[hmac.HashSize / 8];
                //Calculate Tag
                var calcTag = hmac.ComputeHash(cipherText, 0, cipherText.Length - sentTag.Length);
                var ivLength = (BlockBitSize / 8);

                //if message length is to small just return null
                if (cipherText.Length < sentTag.Length + nonSecretPayloadLength + ivLength)
                    return null;

                //Grab Sent Tag
                Array.Copy(cipherText, cipherText.Length - sentTag.Length, sentTag, 0, sentTag.Length);

                //Compare Tag with constant time comparison
                var compare = 0;
                for (var i = 0; i < sentTag.Length; i++)
                    compare |= sentTag[i] ^ calcTag[i];

                //if message doesn't authenticate return null
                if (compare != 0)
                    return null;

                using (var aes = new AesManaged
                {
                    KeySize = KeyBitSize,
                    BlockSize = BlockBitSize,
                    Mode = CipherMode.CBC,
                    Padding = PaddingMode.PKCS7
                })
                {

                    //Grab IV from message
                    var iv = new byte[ivLength];
                    Array.Copy(cipherText, nonSecretPayloadLength, iv, 0, iv.Length);

                    using (var decrypter = aes.CreateDecryptor(cryptKey, iv))
                    using (var plainTextStream = new MemoryStream())
                    {
                        using (var decrypterStream = new CryptoStream(plainTextStream, decrypter, CryptoStreamMode.Write))
                        using (var binaryWriter = new BinaryWriter(decrypterStream))
                        {
                            //Decrypt Cipher Text from Message
                            binaryWriter.Write(
                              cipherText,
                              nonSecretPayloadLength + iv.Length,
                              cipherText.Length - nonSecretPayloadLength - iv.Length - sentTag.Length
                            );
                        }
                        //Return Plain Text
                        return plainTextStream.ToArray();
                    }
                }
            }
        }

    }
}

