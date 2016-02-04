using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Mail;
using System.Net;

namespace CommonUtilities
{
    public class EmailHandler
    {
        public static void SendEmail(string Emailto, string EmailTitle, string EmailContent)
        {
            var client = new SmtpClient("smtp.gmail.com", 587)
              {
                  Credentials = new NetworkCredential("cobcyouth.spiritual@gmail.com", "Cobc1234"),
                  EnableSsl = true
              };

            client.Send("cobcyouth.spiritual@gmail.com", Emailto, EmailTitle, EmailContent);

        }
    }
}
