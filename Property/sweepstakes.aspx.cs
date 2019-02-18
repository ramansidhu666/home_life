using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Property
{
    public partial class sweepstakes : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSend_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "ups_Addsweepstakes";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
            cmd.Parameters.AddWithValue("@LastName", txtlastname.Text);
            cmd.Parameters.AddWithValue("@Province", ddlprovince.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@City", txtcity.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@Zip", txtpostalcode.Text);
            cmd.Parameters.AddWithValue("@PhoneNumber", txtPhoneno.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@SalesRepresentative", txtsales.Text);
            if (rdown.Checked == true)
            {
                cmd.Parameters.AddWithValue("@ResidenceInformation", "Own");
            }
            else
            {
                cmd.Parameters.AddWithValue("@ResidenceInformation", "Rent");
            }
            if (chkbuying.Checked == true)
            {
                cmd.Parameters.AddWithValue("@Types", "Buying");
            }
            if (chkmortage.Checked == true)
            {
                cmd.Parameters.AddWithValue("@Types", "Mortgaging / Refinancing");
            }
            if (chkinsurance.Checked == true)
            {
                cmd.Parameters.AddWithValue("@Types", "Insurance Advice");
            }
            if (chkanalysis.Checked == true)
            {
                cmd.Parameters.AddWithValue("@Types", "I like a free market analysis");
            }
            if (chkselling.Checked == true)
            {
                cmd.Parameters.AddWithValue("@Types", "Selling");
            }
            if (chkcareer.Checked == true)
            {
                cmd.Parameters.AddWithValue("@Types", "Career in Real Estate");
            }
            if (chkservices.Checked == true)
            {
                cmd.Parameters.AddWithValue("@Types", "Moving Services");
            }
            if (chknewsletter.Checked == true)
            {
                cmd.Parameters.AddWithValue("@Types", "interested in receiving the Homelife Newsletter");
            }
            else
            {
                cmd.Parameters.AddWithValue("@Types", "");
            }
            cmd.Parameters.AddWithValue("@YearsOfHome", ddlyearsofhome.SelectedItem.Text);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            conn.Close();
            Clear();

        }
        protected void Clear()
        {
            txtFirstName.Text = "";
            txtlastname.Text = "";
            txtPhoneno.Text = "";
            txtAddress.Text = "";
            txtcity.Text = "";
            txtpostalcode.Text = "";
            txtEmail.Text = "";
            txtsales.Text = "";
            ddlyearsofhome.SelectedItem.Text = "Select";
            ddlprovince.SelectedItem.Text = "Select";
        }
    }
}