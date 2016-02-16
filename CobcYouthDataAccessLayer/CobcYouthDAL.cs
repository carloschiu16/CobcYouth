using System.Web;
using MySql.Data.MySqlClient;
using System.Data;
using System.Data.Common;
using CommonUtilities;
using System.Text;

namespace CobcYouthDataAccessLayer
{
    public class CobcYouthDAL
    {
        public static User GetUserLogin(string UserName, string InputPassword)
        {
            string commandText = string.Format("select * from user where UserName = @UserName;");
            DataBaseHandler dbHandler = new DataBaseHandler();
            MySqlCommand command = new MySqlCommand(commandText, dbHandler.conn);
            command.Parameters.AddWithValue("@UserName", UserName);
            //command.Parameters.AddWithValue("@InputPassword", InputPassword);
            command.CommandText = commandText;

            DataTable dt = dbHandler.SQLExecDataTable(dbHandler.conn, command);

            if (dt.Rows.Count > 0)
            {
                if (InputPassword == Encryption.Decrypt(dt.Rows[0]["Password"].ToString()))
                {
                    User user = new User();
                    user.UserID = (int)dt.Rows[0]["UserID"];
                    user.UserName = dt.Rows[0]["UserName"].ToString();
                    user.UserGroup = (int)dt.Rows[0]["UserGroup"];
                    user.LoginTime = System.DateTime.Now;
                    return user;
                }
            }
            return null;
        }

        public static DataTable GetSpiritGrowPlan(int fellowshipID)
        {

            string sWhere = "where ";
            sWhere += (fellowshipID == 0) ? "1 = 1" : "fellowshipID =" + fellowshipID.ToString();

            System.Text.StringBuilder sb = new StringBuilder();
            sb.Append("select m.MemberID, m.MemberName,f.Name,bp.BibleStudyPlan,sp.BibleStudy,sp.ChurchActivities,sp.Services,award.Award from member m ");
            sb.Append("inner join spiritgrowplan sp on m.memberid = sp.memberid ");
            sb.Append("inner join fellowship f on m.Fellowship = f.fellowshipid ");
            sb.Append("inner join biblestudyplan bp on bp.BibleStudyPlanID = sp.BibleStudyPlanID ");
            sb.Append("inner join award on award.AwardID = sp.AwardID ");
            sb.Append(sWhere);
            sb.Append(" order by 1");
            string commandText = sb.ToString();

            DataBaseHandler dbHandler = new DataBaseHandler();
            MySqlCommand command = new MySqlCommand(commandText, dbHandler.conn);
            command.CommandText = commandText;

            DataTable dt = dbHandler.SQLExecDataTable(dbHandler.conn, command);
            return dt;
        }

        public static DataTable GetMember(int ID = 0)
        {
            System.Text.StringBuilder sb = new StringBuilder();
            sb.Append("SELECT MemberID,MemberName,Nickname,Gender,f.Name as FellowShipName,Email,Facebook,Tel,Mobile from member m ");
            sb.Append("inner join fellowship f ");
            sb.Append("on f.fellowshipID = m.Fellowship ");
            if (ID != 0) sb.Append(string.Format("where MemberID = {0}", ID.ToString()));

            string commandText = sb.ToString();
            DataBaseHandler dbHandler = new DataBaseHandler();
            MySqlCommand command = new MySqlCommand(commandText, dbHandler.conn);
            command.CommandText = commandText;

            DataTable dt = dbHandler.SQLExecDataTable(dbHandler.conn, command);
            return dt;
        }

        public static DataTable GetFellowship()
        {
            System.Text.StringBuilder sb = new StringBuilder();
            sb.Append("select * from fellowship ");
            sb.Append("where FellowshipID <> 26 ");
            sb.Append("order by 1");
            string commandText = sb.ToString();

            DataBaseHandler dbHandler = new DataBaseHandler();
            MySqlCommand command = new MySqlCommand(commandText, dbHandler.conn);
            command.CommandText = commandText;

            DataTable dt = dbHandler.SQLExecDataTable(dbHandler.conn, command);
            return dt;
        }

    }
}
