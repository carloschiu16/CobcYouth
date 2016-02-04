using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommonUtilities;

namespace CobcYouth.SpiritGrow
{
    public partial class SpirirGrowSendEmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelTo.Text = LabelTitle.Text = "";
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            if (EmailTo.Text.Trim() == "")
            {
                LabelTo.Text = "Please Enter address.";
                return;
            }

            if (EmailContent.Text.Trim() == "")
            {
                LabelTitle.Text = "Please Enter Title";
                return;
            }

            EmailHandler.SendEmail(EmailTo.Text, EmailTitle.Text, EmailContent.Text);
        }


    }
}