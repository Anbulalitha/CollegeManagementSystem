# CollegeManagementSystem
This project is created by asp web application by using master page for frontend and backend:
=>It having add,view,update,delete.
=>Database is connected though local database and creating stored procedure.

Class for DataConnection:
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CollegeManagementSystem
{
    public class DataConnection
    {
        private readonly string ConnStr = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        private SqlConnection cn;

        public DataConnection()
        {
            cn = new SqlConnection(ConnStr);
        }

        public void Execute(SqlCommand cmd)
        {
            try
            {
                cmd.Connection = cn;
                if (cn.State == System.Data.ConnectionState.Open)
                {
                    cn.Close();
                }
                cn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                throw new Exception($"Database error: {ex.Message}", ex);
            }
            finally
            {
                if (cn.State == System.Data.ConnectionState.Open)
                {
                    cn.Close();
                }
            }
        }
        public SqlDataReader GetResult(SqlCommand cmd)
        {
            try
            {
                cmd.Connection = cn;
                if (cn.State == System.Data.ConnectionState.Open)
                {
                    cn.Close();
                }
                cn.Open();
                return cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
            }
            catch (SqlException ex)
            {
                throw new Exception($"Database error:{ex.Message},ex");
            }
        }

    }

}

