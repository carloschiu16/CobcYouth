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

namespace CobcYouth.SpiritGrow
{
    public partial class SpiritGrowPlan : BasePage
    {
        static string prevPage = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            CheckLogin();

            if (!ClientScript.IsStartupScriptRegistered("JsFunc_DefaultSize"))
                Page.ClientScript.RegisterStartupScript(this.GetType(), "JsFunc_DefaultSize", "DefaultSize();", true);

            if (!IsPostBack)
            {
                if (Request.UrlReferrer != null)
                {
                    var uri = new Uri(Request.UrlReferrer.ToString());
                    prevPage = uri.GetLeftPart(UriPartial.Path);
                }

                if (Session["Test_dtmember"] != null && prevPage.Contains("/Master/SingleMember.aspx"))
                {
                    if (!ClientScript.IsStartupScriptRegistered("JsFunc_Setsize"))
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "JsFunc_Setsize", "Setsize();", true);

                    GridViewPlan.DataSource = (DataTable)Session["Test_dtmember"];
                    GridViewPlan.DataBind();
                }

                //Page.ClientScript.RegisterStartupScript(this.GetType(), "JsFun", "DefaultSize()", true);
                DataTable dtFellowship = CobcYouthDAL.GetFellowship();
                dpFellowship.DataSource = dtFellowship;
                dtFellowship.Rows.Add(0, "全部團契");
                dtFellowship.DefaultView.Sort = "FellowshipID";
                dpFellowship.DataValueField = "FellowshipID";
                dpFellowship.DataTextField = "name";
                dpFellowship.DataBind();
            }

        }

        protected void GridViewPlan_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = "ID";
                e.Row.Cells[1].Text = "參加者";
                e.Row.Cells[2].Text = "團契";
                e.Row.Cells[3].Text = "計劃";
                e.Row.Cells[4].Text = "讀經計劃";
                e.Row.Cells[5].Text = "教會活動";
                e.Row.Cells[6].Text = "事奉";
                e.Row.Cells[7].Text = "目標";
            }
            e.Row.Cells[0].Width = 20;
            e.Row.Cells[1].Width = 50;
            e.Row.Cells[2].Width = 70;
            e.Row.Cells[3].Width = 100;
            e.Row.Cells[5].Width = 130;
            e.Row.Cells[6].Width = 100;
            e.Row.Cells[7].Width = 30;

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridViewPlan, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "Click to select this row.";
                e.Row.Attributes["onmouseover"] = "this.style.cursor='pointer';";
                //e.Row.Attributes["onmouseover"] = "this.style.cursor='pointer';this.style.textDecoration='underline';";
            }
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            if (!ClientScript.IsStartupScriptRegistered("JsFunc_Setsize"))
                Page.ClientScript.RegisterStartupScript(this.GetType(), "JsFunc_Setsize", "Setsize();", true);
            int fellowshipID = Convert.ToInt32(dpFellowship.SelectedValue);
            DataTable dt = CobcYouthDAL.GetSpiritGrowPlan(fellowshipID);
            GridViewPlan.DataSource = dt;
            GridViewPlan.DataBind();
            Session["Test_dtmember"] = dt;
        }


        protected void OnSelectedIndexChanged(object sender, EventArgs e)
        {
            string ID = GridViewPlan.SelectedRow.Cells[0].Text;
            string s = string.Format("../Master/SingleMember.aspx?ID={0}", ID);
            //string s = string.Format("Master/Client.aspx?index={0}&name={1}&country={2}", index, name, country);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "JsFunc_Redirect", string.Format("Redirect('{0}');", s), true);
        }
    }
}