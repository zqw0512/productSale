using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Product_Sales
{
    public partial class adminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String isAdmin = "false";
            Session["isAdmin"] = isAdmin;

            if (!this.IsPostBack)
            {
                ViewState["LoginErrors"] = 0;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            String username = AdminUser.Text;
            String password = AdminPassword.Text;

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Initial Catalog=ProductSales;Data Source=.;Integrated Security=true";
            conn.Open();

            SqlCommand cmd = new SqlCommand("select firstName from userlogin where ( isAdmin='y' or isAdmin='Y' ) and username = '" + username + "' and password = '" + password + "'", conn);

            Object result = cmd.ExecuteScalar();
            if (result != null)
            {
                Session["UserName"] = username;
                Session["FirstName"] = result;

                String isAdmin = "Y";
                Session["isAdmin"] = isAdmin;
                
                Response.Redirect("adminPage.aspx");
            }
            else
            {
                String isAdmin = "N";
                Session["isAdmin"] = isAdmin;
                HttpContext.Current.Response.Write("<script>alert('Wrong username or password!')</script>");
            }
            conn.Close();
        }
    }
}