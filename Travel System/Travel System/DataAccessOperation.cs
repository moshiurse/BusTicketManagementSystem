using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Travel_System
{
    public class DataAccessOperation
    {
        string mycon = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        public DataTable GetDataTable(string query)
        {
            SqlConnection con = new SqlConnection(mycon);
            if(con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlDataAdapter da = new SqlDataAdapter(query, mycon);
            DataTable dt = new DataTable();

            da.Fill(dt);
            return dt;
        }

        public int ExecuteQuery(string query)
        {
            SqlConnection con = new SqlConnection(mycon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand(query, con);
            try
            {
                cmd.ExecuteNonQuery();
                return 1;
            }
            catch (Exception e)
            {
                string s =e.Message;
                return 0;

            }
        }
    }
}