using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;
using Property_cls;
using Property_Cryptography;
namespace Property
{
    public partial class Testimonials : System.Web.UI.Page
    { 
        
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());
        cls_Property clsobj = new cls_Property();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void btnSend_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //            SqlCommand cmd = new SqlCommand();
        //            cmd.CommandType = CommandType.StoredProcedure;
        //            cmd.CommandText = "ups_AddTestimonial";
        //            cmd.Connection = conn;
        //            cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
        //            cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
        //            cmd.Parameters.AddWithValue("@Comments", txtcomments.Text);
        //            cmd.Parameters.AddWithValue("@Date", txtDate.Text);
                   

        //            if (conn.State == ConnectionState.Closed)
        //            {
        //                conn.Open();
        //            }
        //            cmd.Connection = conn;
        //            cmd.ExecuteNonQuery();
                    
        //            conn.Close();
        //            clear();
        //            //Response.Redirect("~/Admin/AdminDashboard.aspx", false);
        //        }
            
        //    catch (Exception ex)
        //    {
        //        //throw ex;
        //    }
        //}

        //public void clear()
        //{
        //    //txtFirstName.Text = string.Empty;
        //    //txtLastName.Text = string.Empty;
        //    //txtcomments.Text= string.Empty;
        //    //txtDate.Text = DateTime.Now.ToString();
        //}
            
    }
}