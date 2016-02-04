using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;


namespace CobcYouth
{
    public class BasePage : System.Web.UI.Page
    {
        protected void CheckLogin()
        {
            if (Session["UserName"] == null || Session["UserName"].ToString() == "")
            {
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}