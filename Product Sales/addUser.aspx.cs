using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Product_Sales
{
    public partial class addUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((String)Session["isAdmin"] == "Y")
            {
                //success - proceed displaying the page
            }
            else
            {
                // if not admim redirect to login page
                Response.Redirect("account.aspx");
            }
        }
        protected void Binsert_Click(object sender, EventArgs e)
        {
            // performing validataion
            if (ValidateUserData() == true)
            {
                try
                {
                    // performing sql insert 
                    SqlDataSourceInsertUser.Insert();
                    HttpContext.Current.Response.Write("<script>alert('Successfully Added user " + ins_Username.Text + "')</script>");

                    // clearing all the fields after successful insertion 
                    ins_Username.Text = "";
                    ins_Password.Text = "";
                    passwdVerify.Text = "";
                    ins_Email.Text = "";
                    ins_FirstName.Text = "";
                    ins_LastName.Text = "";
                    ins_Mobile.Text = "";
                    ins_Address.Text = "";
                    ins_admin.SelectedValue = "N";
                    ins_sex.SelectedValue = "M";
                }
                catch
                {
                    //Error in sql statement
                    HttpContext.Current.Response.Write("<script>alert('Not able to Added user " + ins_Username.Text + "')</script>");
                }
            }
            else {
                // error in input data
                HttpContext.Current.Response.Write("<script>alert('Invalid Inputs')</script>");
            }
        }

        private bool ValidateUserData()
        {
            // ckecking all the fields are valid
            if ( (ins_Username.Text.Length > 0 ) && (ins_Password.Text.Length > 0) && (ins_Email.Text.Length > 0) && (ins_FirstName.Text.Length > 0) )
                // checking if password and retype pasword match
                if (ins_Password.Text == passwdVerify.Text)
                    return true;
            return false;
        }
    }
}