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
    public partial class single : System.Web.UI.Page
    {
        /************************************************************************* 
*  single - parse the id and get the corresponsive info from the database; the sidebar will calculate the click times.   * 


***********************************************************************/

        protected String id = "0";

        protected String name = "";
        protected int price = 0;
        protected String color = "";
        protected String size = "";
        protected String category = "";
        protected String brand = "";
        protected String description = "";
        protected String information = "";
        protected int rate = 0;
        protected int numofRate = 0;
        protected String reviews = "";
        protected String tag = "";
        protected String sku = "";
        protected String picture = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=localhost;Initial Catalog=productSales;Integrated Security=True");
            conn.Open();

            id = Request.QueryString["id"];
            if(String.IsNullOrEmpty(id))
            {
                Response.Redirect("products.aspx");
            }
            String sql = "update products set clickTime += 1 where id =";
            String sqlTop = "SELECT TOP (8) * FROM products ORDER BY clickTime DESC";
            if (Session["cart"] == null)
            {
                Session["cart"] = new Dictionary<String, int>();
            }
            if (!this.IsPostBack)
            {
                DataSet ds0 = GetData(sqlTop + ";" + sql + id, conn);
                //DataSet ds = GetData(sqlTop, conn);
                Repeater1.DataSource = ds0;
                Repeater1.DataBind();
            }

            sql = "select * from products where id = " + id;
            DataSet ds = GetData(sql, conn);

            this.name = Convert.ToString(ds.Tables[0].Rows[0]["name"]);
            this.price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"]);
            this.color = Convert.ToString(ds.Tables[0].Rows[0]["color"]);
            String tmp = "";
            foreach(String s in color.Split(','))
            {
                tmp += "<option>" + s + "</option>";
            }
            color = tmp;
            this.category = Convert.ToString(ds.Tables[0].Rows[0]["catogory"]);
            this.size = Convert.ToString(ds.Tables[0].Rows[0]["size"]);
            tmp = ""; 
            foreach(String s in size.Split(','))
            {
                tmp += "<option>" + s + "</option>";
            }
            size = tmp;
            this.brand = Convert.ToString(ds.Tables[0].Rows[0]["brand"]);
            this.description = Convert.ToString(ds.Tables[0].Rows[0]["description"]);
            this.information = Convert.ToString(ds.Tables[0].Rows[0]["infomation"]);
            this.rate = Convert.ToInt32(ds.Tables[0].Rows[0]["rate"]);
           // this.numofRate = Convert.ToInt32(ds.Tables[0].Rows[0]["numofRate"]);
            this.reviews = Convert.ToString(ds.Tables[0].Rows[0]["reviews"]);
            this.tag = Convert.ToString(ds.Tables[0].Rows[0]["tag"]);
            this.sku = Convert.ToString(ds.Tables[0].Rows[0]["sku"]);
            this.picture = Convert.ToString(ds.Tables[0].Rows[0]["picture"]);

        }
        protected DataSet GetData(String queryString, SqlConnection conn)
        {
            DataSet ds = new DataSet();
            try
            { 
                SqlDataAdapter adapter = new SqlDataAdapter(queryString, conn);
                adapter.Fill(ds);
            }
            catch (Exception ex)
            {
            }
            return ds;
        }



        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Dictionary<String,int> cart = (Dictionary<String, int>)Session["cart"];
            if (cart.ContainsKey(id))
            {
                cart[id] += 1;
            } else
            {
                cart.Add(id, 1);
            }
            Session["cart"] = cart;
        }
    }
}
