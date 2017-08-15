using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Product_Sales
{
    public partial class checkout : System.Web.UI.Page
    {
        /************************************************************************* 
   *  checkout - record the items that users reserved   * 


   ***********************************************************************/

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cart"] == null)
            {
                Session["cart"] = new Dictionary<String, int>();
            }
            Dictionary<String, int> cart = (Dictionary<String, int>)Session["cart"];
            if (Request.RequestType == "POST")
            {
                cart.Remove(Request.Form["id"]);
                Session["cart"] = cart;
                return;
            }
            if (cart.Count != 0)
            {
                String cartId = "(" + string.Join(",", cart.Keys) + ")";
                SqlConnection conn = new SqlConnection("Initial Catalog=ProductSales;Data Source=.;Integrated Security=true");
                String command = "SELECT * FROM [products] WHERE [id] in " + cartId;
                SqlDataAdapter sda = new SqlDataAdapter(command, conn);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                Repeater1.DataSource = ds;
                Repeater1.DataBind();
            } else
            {
                Repeater1.Dispose();
            }
        }
    }
}