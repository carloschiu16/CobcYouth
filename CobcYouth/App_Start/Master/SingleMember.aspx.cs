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
namespace CobcYouth.Master
{
    public partial class SingleMember : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CheckLogin();
            int ID = Convert.ToInt32(Request.QueryString["ID"]);
            DataTable dt = CobcYouthDAL.GetMember(ID);
            if (dt.Rows.Count > 0)
            {
                MemberID.Text = dt.Rows[0]["MemberID"].ToString();
                MemberName.Text = dt.Rows[0]["MemberName"].ToString();
                NickName.Text = dt.Rows[0]["NickName"].ToString();
                Gender.Text = dt.Rows[0]["Gender"].ToString();
                Fellowship.Text = dt.Rows[0]["FellowshipName"].ToString();

                Email.Text = dt.Rows[0]["Email"].ToString();
                Facebook.Text = dt.Rows[0]["Facebook"].ToString();
                Tel.Text = dt.Rows[0]["Tel"].ToString();
                Mobile.Text = dt.Rows[0]["Mobile"].ToString();
            }
        }
    }
}