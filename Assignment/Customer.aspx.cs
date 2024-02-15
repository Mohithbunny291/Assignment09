using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblDetails.Visible = false;
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void BtmSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                LblDetails.Visible = true;
                LblDetails.Text = "<font color=\"green\"><b>Registeration Done!!!!<b>";
                LblDetails.Text += "<br/>Welcome " + TxtName.Text;
                LblDetails.Text += "<br/>Mobile Number " + TxtMobile.Text;
                LblDetails.Text += "<br/>Email " + TxtEmail.Text;
            }
        }

        protected void CtmValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = TxtName.Text.Length >= 6;
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string compare = "pass@123";
            args.IsValid = TxtPassword.Text == compare;
        }
    }
}