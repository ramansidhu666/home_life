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
using System;


namespace Property
{
    public partial class Contact_Agent : System.Web.UI.Page
    {
        #region Global
        string Radio;
        string agentsemail;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());
        Cryptography crpt = new Cryptography();

        #endregion Global

        #region PageLoad

        protected void Page_Load(object sender, EventArgs e)
        {
            BindDDl();
            this.Page.Title = "Homelife Properties :Registration";
        }

        #endregion PageLoad

        #region button click

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {

               string id = Request.QueryString["id"];
                SqlCommand cmd1 = new SqlCommand();
                cmd1.Connection = conn;
                cmd1.CommandText = "select * from  [dbo].[Agents] where id ='"+id+"'";
                SqlDataAdapter adp = new SqlDataAdapter(cmd1);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    agentsemail = dt.Rows[0]["Email"].ToString();
                }
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "usp_AddAgents_User";
                SqlParameter sp = new SqlParameter();
                sp.ParameterName = "@ID";
                sp.SqlDbType = SqlDbType.Int;
                sp.Direction = ParameterDirection.InputOutput;
                sp.SqlValue = 0;
                cmd.Parameters.Add(sp);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                cmd.Parameters.AddWithValue("@City", txtCity.Text);
                cmd.Parameters.AddWithValue("@Country", ddlcountry.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@Province", txtprovince.Text);
                cmd.Parameters.AddWithValue("@PostalCode", txtpostalcode.Text);
                cmd.Parameters.AddWithValue("@PhoneNumber",txtPhoneNo.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                if(rdemail.Checked)
                {
                    Radio= "Email";
                }
                else
                {
                    Radio = "Phone";
                    
                }
                cmd.Parameters.AddWithValue("@ContactMethod", Radio);
                cmd.Parameters.AddWithValue("@ContactrequestMethod", txtcntctrqstsub.Text);
                cmd.Parameters.AddWithValue("@ContactrequestBody", txtcntctrqstbody.Text);

                cmd.Connection = conn;

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                cmd.ExecuteNonQuery();
                string ID = Convert.ToString(cmd.Parameters["@ID"].Value);
                int UserID = Convert.ToInt32(ID);
                conn.Close();
                MailMessage msg = new MailMessage();
                msg.To.Add(agentsemail);
                msg.From = new MailAddress(ConfigurationManager.AppSettings["RegFromMailAddress"].ToString());
                string body = "";
                body = body + "<p>Person Name : " + txtName.Text + "</p>";
                body = body + "<p>Email : " + txtEmail + "</p>";
                body = body + "<p>Address : " + txtAddress.Text + "</p>";
                body = body + "<p>City : " + txtCity.Text  + "</p>";
                body = body + "<p>Province Or State : " + txtprovince.Text + "</p>";
                body = body + "<p>Country : " + ddlcountry.SelectedItem.Text + "</p>";
                body = body + "<p>Postal Code  : " + txtpostalcode + "</p>";
                body = body + "<p>Phone Number : " + txtPhoneNo.Text + "</p>";
                body = body + "<p>Your Preferred Contact Method : " + Radio + "</p>";
                body = body + "<p>Contact Request Subject : " + txtcntctrqstsub.Text + "</p>";
                body = body + "<p>Contact Request Message : " + txtcntctrqstbody.Text+ "</p>";
                //string EncodeUserId = crpt.Encrypt(UserID.ToString());
                //string Url = Request.Url.AbsoluteUri.Replace("Registration.aspx", "Verification.aspx?UserID=" + EncodeUserId);
                //body += "<br /><a href = '" + Url + "'>Click here to verify your Email</a><br /><br />";
                msg.Body = body;

                msg.IsBodyHtml = true;
                SmtpClient client = new SmtpClient();
                client.UseDefaultCredentials = false;
                client.Host = ConfigurationManager.AppSettings["SmtpServer"].ToString();//host server
                client.Port = Convert.ToInt32(ConfigurationManager.AppSettings["Port"].ToString());//port
                client.EnableSsl = true;
                NetworkCredential credentials = new NetworkCredential(ConfigurationManager.AppSettings["RegFromMailAddress"].ToString(), ConfigurationManager.AppSettings["RegPassword"].ToString());
                client.Credentials = credentials;
                client.Send(msg);
                Clear();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        #endregion button click

        #region Other Methods

        public void Clear()
        {
            txtName.Text = "";
            txtAddress.Text = "";
            txtCity.Text = "";
            txtpostalcode.Text = "";
            txtEmail.Text = "";
            txtprovince.Text = "";
            txtPhoneNo.Text = "";
            ddlcountry.SelectedItem.Text = "Select";
            rdemail.Checked = false;
            rdphone.Checked = false;
            txtcntctrqstbody.Text = "";
            txtcntctrqstsub.Text = "";
        }

        public void  BindDDl()
        {
            string com = "Select * from [dbo].[Country]";
            SqlDataAdapter adpt = new SqlDataAdapter(com, conn);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            ddlcountry.DataSource = dt;
            ddlcountry.DataBind();
            ddlcountry.DataTextField = "Country";
            ddlcountry.DataValueField = "ID";
            ddlcountry.DataBind();
            ddlcountry.Items.Insert(1, new ListItem("--Select--", "1"));
        }
        #endregion Other Methods

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/AdminLogin.aspx");
        }
    }
}