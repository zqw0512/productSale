using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Product_Sales
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                if (Session["Login"] == null)
                {
                    HttpContext.Current.Response.Write("<script>alert('Welcome " + Session["FirstName"] + "!')</script>");
                    Session["Login"] = "true";
                }
                Label1.Text = "Hello " + Session["FirstName"].ToString();
                logout.Visible = true;
                FooterLogout.Visible = true;
                FooterLogin.Visible = false;
                FooterRegister.Visible = false;
                if (Session["isAdmin"].ToString() == "Y")
                {
                    FooterAdmin.Visible = true;
                }
            } else
            {
                logout.Visible = false;
                FooterLogout.Visible = false;
                FooterAdmin.Visible = false;
                FooterLogin.Visible = true;
                FooterRegister.Visible = true;
            }
            
        }
        
    }
}