using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
namespace CobcYouth
{
    public partial class _Default : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CheckLogin();
            if (!IsPostBack)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "JsFunc", "Setsize()", true);
                loginName.Text = Session["UserName"] == null ? "" : Session["UserName"].ToString();
                loginTime.Text = Session["LoginTime"] == null ? "" : Convert.ToDateTime(Session["LoginTime"]).ToString("yyyy-MM-dd hh:mm:ss");
                loginGroup.Text = Session["UserGroup"] == null ? "" : Session["UserGroup"].ToString();

                System.Web.HttpBrowserCapabilities browser = Request.Browser;
                userBrowser.Text = browser.Browser;
                browserVersion.Text = browser.Version;

                lblDescriptionValue.Text = FileVersionInfo.GetVersionInfo(System.Reflection.Assembly.GetExecutingAssembly().Location).FileDescription;
                lblCompanyValue.Text = FileVersionInfo.GetVersionInfo(System.Reflection.Assembly.GetExecutingAssembly().Location).CompanyName;
                lblCopyrightValue.Text = FileVersionInfo.GetVersionInfo(System.Reflection.Assembly.GetExecutingAssembly().Location).LegalCopyright;
                lblVersionValue.Text = FileVersionInfo.GetVersionInfo(System.Reflection.Assembly.GetExecutingAssembly().Location).FileVersion;
                lblLastUpdatedValue.Text = new System.IO.FileInfo(System.Reflection.Assembly.GetExecutingAssembly().Location).LastWriteTime.ToString();
            }
        }
    }
}