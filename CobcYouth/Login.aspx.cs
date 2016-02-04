using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Data.Common;
using CommonUtilities;
using CobcYouthDataAccessLayer;

namespace CobcYouth
{
    public partial class Login : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserID"] = 0;
            Session["UserName"] = "";
            Session["UserGroup"] = 0;
        }

        protected void LoginUser_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string UserName = LoginUser.UserName;
            string InputPassword = LoginUser.Password;
            DataTable dt = CobcYouthDAL.GetUserLogin(UserName, InputPassword);
          
            if (dt.Rows.Count > 0)
            {
                e.Authenticated = true;
                Session["UserID"] = (int)dt.Rows[0]["UserID"];
                Session["UserName"] = dt.Rows[0]["UserName"].ToString();
                Session["UserGroup"] = (int)dt.Rows[0]["UserGroup"]; ;
                Session["LoginTime"] = System.DateTime.Now;
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}