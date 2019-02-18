using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using Property_cls;

namespace Property.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        cls_Property clsobj = new cls_Property();
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "HomeLife";
            Session["IsLogin"] = null;
            SiteSetting();
        }
        protected void SiteSetting()
        {
            try
            {
                DataTable dt = clsobj.GetSiteSettings();
                if (dt.Rows.Count > 0)
                {
                    siteTitle.Text = Convert.ToString(dt.Rows[0]["Title"]);
                    //lblBrkrOneName.Text = Convert.ToString(dt.Rows[0]["BrokerOneName"]);
                    //lblbrkerOnephn.Text = Convert.ToString(dt.Rows[0]["BrokerOnePhone"]);
                    //lblBrkrTwoNme.Text = Convert.ToString(dt.Rows[0]["BrokerTwoName"]);
                    //lblbrkrTwoPhn.Text = Convert.ToString(dt.Rows[0]["BrokerTwoPhone"]);
                    byte[] favimage = (byte[])dt.Rows[0]["Favicon.ico"];
                    if (favimage.Length > 0)
                    {
                        Session["MyFavicon"] = favimage;
                        favicon.Visible = true;
                        favicon.Href = "~/ShowFavicon.aspx";
                    }
                    else
                    {
                        favicon.Visible = false;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}