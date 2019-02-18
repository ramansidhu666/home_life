using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data;
using Property;
using Property_cls;

namespace Property.Admin
{
    public partial class Agents : System.Web.UI.Page
    {
        #region Global

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());
        cls_Property clsobj = new cls_Property();

        #endregion Global

        #region Page Load

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["FirstName"] != null)
            {
                if (!IsPostBack)
                {
                    //GetSiteData();
                  
                }
            }
            else
            {
                Response.Redirect("~/Admin/AdminLogin.aspx", false);
            }
        }

        #endregion Page Load

     
        #region GetSiteData Method

        protected void GetSiteData()
        {
            try
            {
                DataTable dt = new DataTable();
                dt = clsobj.GetAgents();
                if (dt.Rows.Count > 0)
                {
                   
                        txtFirstname.Text = Convert.ToString(dt.Rows[0]["FirstName"]);
                        txtLastName.Text = Convert.ToString(dt.Rows[0]["LastName"]);
                        txtEamil.Text = Convert.ToString(dt.Rows[0]["Eamil"]);
                        txtAddress.Text = Convert.ToString(dt.Rows[0]["Address"]);
                        txtCity.Text = Convert.ToString(dt.Rows[0]["City"]);
                        txtState.Text = Convert.ToString(dt.Rows[0]["State"]);
                        txtPhoneNumber.Text = Convert.ToString(dt.Rows[0]["PhoneNumber"]);
                        txtfax.Text = Convert.ToString(dt.Rows[0]["Fax"]);
                        txtSiteUrl.Text = Convert.ToString(dt.Rows[0]["SiteUrl"]);
                        txtcompany.Text = Convert.ToString(dt.Rows[0]["Company"]);
                        txtpostal.Text = Convert.ToString(dt.Rows[0]["Company"]);
                    }
                }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion GetSiteData Method

        #region Button Click

        protected void btnSave_Click(object sender, EventArgs e)
        {
                try
                {
                    {
                        string fname = System.IO.Path.GetFileName(updBannerImage.FileName);
                        updBannerImage.SaveAs(Server.MapPath("UploadFiles") + "\\" + System.IO.Path.GetFileName(updBannerImage.FileName));
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "ups_AddAgents";
                        cmd.Connection = conn;
                        cmd.Parameters.AddWithValue("@FirstName", txtFirstname.Text);
                        cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
                        cmd.Parameters.AddWithValue("@Email", txtEamil.Text);
                        cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                        cmd.Parameters.AddWithValue("@City", txtCity.Text);
                        cmd.Parameters.AddWithValue("@State", txtState.Text);
                        cmd.Parameters.AddWithValue("@PhoneNumber", txtPhoneNumber.Text);
                        cmd.Parameters.AddWithValue("@Fax", txtfax.Text);
                        cmd.Parameters.AddWithValue("@SiteUrl", txtSiteUrl.Text);
                        cmd.Parameters.AddWithValue("@FileName", fname);
                        cmd.Parameters.AddWithValue("@Company", txtcompany.Text);
                        cmd.Parameters.AddWithValue("@Country", txtCountry.Text);
                        cmd.Parameters.AddWithValue("@PostalCode",txtpostal.Text) ;
                        cmd.Parameters.AddWithValue("@About", txtAbout.Text);
                        cmd.Parameters.AddWithValue("@Language", ddlLanguage.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("@Designation", txtDesignation.Text);
                        if (conn.State == ConnectionState.Closed)
                        {
                            conn.Open();
                        }
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        clear();
                        Response.Redirect("~/Admin/ShowAgents.aspx", false);
                    }
                }
                catch (Exception ex)
                {
                    //throw ex;
                }
            }
        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashBoard.aspx");
        }

        public void clear()
        {
            txtFirstname.Text = string.Empty;
            txtLastName.Text = string.Empty;
            txtEamil.Text = string.Empty;
            txtfax.Text = string.Empty;
            txtPhoneNumber.Text = string.Empty;
            txtSiteUrl.Text = string.Empty;
            txtState.Text = string.Empty;
            txtCity.Text = string.Empty;
            txtAddress.Text = string.Empty;
            txtcompany.Text = string.Empty;
           
        }
        
        #endregion Button Click      
    }
}