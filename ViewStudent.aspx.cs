using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeManagementSystem
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BinderGridView();
            }
        }
        private void BinderGridView()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("ViewStudent");
                cmd.CommandType = CommandType.StoredProcedure;

                DataConnection db = new DataConnection();
                SqlDataReader dr = db.GetResult(cmd);
                gvwView.DataSource = dr;
                gvwView.DataBind();
                dr.Close();
            }
            catch (Exception ex)
            {
                Response.Write($"Error:{ex.Message}");
            }
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}