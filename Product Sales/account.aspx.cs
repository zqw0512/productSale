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
    public partial class account : System.Web.UI.Page
    {
        /************************************************************************* 
*  account - use to help users to log in to the system base on username and password.   * 


***********************************************************************/
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            String username = UserName.Text;
            String password = Password.Text;
            String sqlQuery = "select firstName , isAdmin from userlogin where username = '" + username + "' and password = '" + password + "'";

            SqlConnection conn = new SqlConnection();

            conn.ConnectionString = "Initial Catalog=ProductSales;Data Source=.;Integrated Security=true";
            conn.Open();
            
            SqlCommand cmd = new SqlCommand(sqlQuery, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Session["UserName"] = username;
                Session["FirstName"] = (String)reader["firstname"];
                Session["isAdmin"] = (String)reader["isAdmin"];
                if ((String)Session["isAdmin"] == "Y")
                {

                    Response.Redirect("adminPage.aspx");
                }
                else
                {
                    Response.Redirect("index.aspx");
                }
            }
            conn.Close();
            HttpContext.Current.Response.Write("<script>alert('Wrong username or password!')</script>");
         
        }
    }
}