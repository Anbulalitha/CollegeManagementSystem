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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string doctorId = Request.QueryString["Id"];
                if (!string.IsNullOrEmpty(doctorId))
                {
                    LoadDoctorDetails(Convert.ToInt32(doctorId));
                }

            }
        }
              private void LoadDoctorDetails(int id)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("GetStudentById", connection))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Studentid", id); connection.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        studid.Text = reader["Studentid"].ToString();
                        studname.Text = reader["StudentName"].ToString();

                        ddlist.SelectedValue = reader["Department"].ToString();
                        phno.Text = reader["PhNo"].ToString();
                    }
                    connection.Close();
                }
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
            using
                (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("UpdateStudent", connection))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Studentid", Convert.ToInt32(studid.Text));
                    cmd.Parameters.AddWithValue("@StudentName", studname.Text);

                    cmd.Parameters.AddWithValue("@Department", ddlist.SelectedValue);
                    cmd.Parameters.AddWithValue("@PhNo", phno.Text);
                    connection.Open();
                    cmd.ExecuteNonQuery();
                    connection.Close();
                }
            }
            Response.Redirect("Home.aspx");
        }


    }

}
    