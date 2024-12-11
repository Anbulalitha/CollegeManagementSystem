using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeManagementSystem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand("InsertStudent", connection);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Studentid", Convert.ToInt32(studid.Text));
                    cmd.Parameters.AddWithValue("@StudentName", studname.Text);

                    cmd.Parameters.AddWithValue("@Department", dept.Text);
                    cmd.Parameters.AddWithValue("@phNo", Convert.ToInt32(phno.Text));


                    connection.Open(); cmd.ExecuteNonQuery();
                    Response.Redirect("Home.aspx");
                }
            }
            catch (FormatException ex)
            {
                Response.Write($"Invalid input: {ex.Message}");
            }
            catch (SqlException ex)
            {
                Response.Write($"Database error: {ex.Message}");
            }
            catch (Exception ex)
            {
                Response.Write($"An error occurred: {ex.Message}");
            }
        }
    }
}
