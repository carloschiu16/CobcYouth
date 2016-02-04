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
    public partial class Member : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CheckLogin();
            DataTable dt = CobcYouthDAL.GetMember();
            GridViewMember.DataSource = dt;
            GridViewMember.DataBind();
        }
    }
}