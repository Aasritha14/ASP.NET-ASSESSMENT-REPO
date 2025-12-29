using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Electricity_PRJ
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Label1.Text = "";
            }
        }

        protected void Btnlogin_Click(object sender, EventArgs e)
        {


            string username = txtUser.Text.Trim();
            string password = TextBox2.Text.Trim();

            // Simple hardcoded validation for demo
            if (username == "admin" && password == "admin@123")
            {
                // Store session and redirect to billing page
                Session["isAdmin"] = true;
                Response.Redirect("BillingForm.aspx");
            }
            else
            {
                Label1.Text = "Invalid Username or Password!";
            }


        }
    }
}