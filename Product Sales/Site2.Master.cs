using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Product_Sales
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected String url;
        protected String category;
        protected void Page_Load(object sender, EventArgs e)
        {
            url = Request.Url.LocalPath;
            category = Request.QueryString["Category"];
        }
    }
}