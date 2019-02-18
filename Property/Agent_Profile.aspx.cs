using System;
using System.Collections.Generic;
using Property_cls;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;


namespace Property
{
    public partial class Agent_Profile : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());
        cls_Property clsobj = new cls_Property();
        protected void Page_Load(object sender, EventArgs e)
        {
            address.Value = "2250 Bovaird Dr East, Suite #502, Brampton, ON L6R 0W3";
            FillGridData();
        }
        protected void FillGridData()
        {
            try
            {

                string id = Request.QueryString["id"];
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandText = "select * from  [dbo].[Agents] where id ='"+id+"'";
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    grdBanfdsfsnerShow.DataSource = dt;
                    grdBanfdsfsnerShow.DataBind();
                    lblcity.Text = Convert.ToString(dt.Rows[0]["City"]);
                    lblcompany.Text = Convert.ToString(dt.Rows[0]["Company"]);
                    lblstate.Text = Convert.ToString(dt.Rows[0]["State"]);
                    lblcity.Text = Convert.ToString(dt.Rows[0]["City"]);
                    //lblcountry.Text = Convert.ToString(dt.Rows[0]["Country"]);
                    lbladdress.Text = Convert.ToString(dt.Rows[0]["Address"]);
                    lblpostal.Text = Convert.ToString(dt.Rows[0]["PostalCode"]);
                    lblphone.Text = Convert.ToString(dt.Rows[0]["PhoneNumber"]);
                    lblLanguage.Text = Convert.ToString(dt.Rows[0]["Language"]);
                    lblAbout.Text = Convert.ToString(dt.Rows[0]["About"]);
                    lblfax.Text = Convert.ToString(dt.Rows[0]["Fax"]);
                    gg.HRef = Convert.ToString(dt.Rows[0]["SiteUrl"]);
                    
                }
                else
                {
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

     
    }
}