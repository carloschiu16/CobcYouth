using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Common;
using MySql.Data.MySqlClient;

namespace CommonUtilities
{
    public class DataBaseHandler
    {
        string _dbHost = "127.0.0.1";
        string _dbUser = "root";
        string _dbPass = "";


        string _dbName = "cobcyouth";
        MySqlConnection _conn = null;

        public MySqlConnection conn
        {
            get { return _conn; }
            set { _conn = value; }

        }

        public DataBaseHandler()
        {
            _conn = CreateMySQLConnection();
        }

        public MySqlConnection CreateMySQLConnection()
        {
            string connStr = "server=" + _dbHost + ";uid=" + _dbUser + ";pwd=" + _dbPass + ";database=" + _dbName;
            return new MySqlConnection(connStr);
        }

        public DataTable SQLExecDataTable(MySqlConnection conn, MySqlCommand command)
        {
            try
            {
                conn.Open();
                command.ExecuteNonQuery();
                var da = new MySqlDataAdapter(command);
                var ds = new DataSet();
                da.Fill(ds);

                return ds.Tables[0];
            }
            catch
            {
                return new DataTable();
            }
        }
    }
}
