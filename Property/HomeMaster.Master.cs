using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using Property_cls;
using System.Data.SqlClient;
using System.Configuration;

namespace Property
{
    public partial class HomeMaster : System.Web.UI.MasterPage
    {
        #region Global
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ToString());
        cls_Property clsobj = new cls_Property();
        Cryptography crpt = new Cryptography();
        String strSortExpression = "", strSortDirection = "";
        int intPageIndex = 0;
        public String GridViewSortDirection
        {
            get
            {
                if (ViewState["GridViewSortDirection"] == null)
                {
                    return "DESC";
                }
                else
                {
                    return ViewState["GridViewSortDirection"].ToString();
                }
            }

            set
            {
                ViewState["GridViewSortDirection"] = value;
            }

        }

        String GetSortDirection()
        {
            String GridViewSortDirectionNew;

            switch (GridViewSortDirection)
            {
                case "DESC":
                    GridViewSortDirectionNew = "ASC";
                    break;
                case "ASC":
                    GridViewSortDirectionNew = "DESC";
                    break;
                default:
                    GridViewSortDirectionNew = "DESC";
                    break;

            }
            GridViewSortDirection = GridViewSortDirectionNew;
            return GridViewSortDirectionNew;

        }
        int findex, lindex;
        public int CurrentPage
        {
            get
            {
                if (ViewState["CurrentPage"] != null)
                {
                    return Convert.ToInt32(ViewState["CurrentPage"]);
                }
                else
                {
                    return 0;
                }
            }
            set { ViewState["CurrentPage"] = value; }
        }

        #endregion Global
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //BindMenusList();
                SiteSetting();
                bindBnanners();
                GetTestimonials();

                //GetSaleLease_Residential(); 
            }
        }
        private void BindMenusList()
        {
            StringBuilder StrMenu = new StringBuilder();
            DataTable dt = new DataTable();
            DataTable dtSubmenu = new DataTable();
            dt = clsobj.GetMenuList();
            if (dt.Rows.Count > 0)
            {
                string PageName = dt.Rows[0]["PageName"].ToString();
                StrMenu.Append("<a class='toggleMenu' href='#'></a>");
                StrMenu.Append("<ul class='nav'>");
                StrMenu.Append("<li class='test' style='background:none;'><a href='../Home.aspx' title='Home' class='active'>Home</a></li>");
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    clsobj.PageID = Convert.ToInt32(dt.Rows[i]["ID"]);
                    dtSubmenu = clsobj.GetSubMenuBy_PageID();
                    //check if it has submenu 
                    if (dtSubmenu.Rows.Count > 0)
                    {
                        StrMenu.Append("<li><a href=#>" + dt.Rows[i]["PageName"] + "</a>");//</li>
                        StrMenu.Append("<ul>");
                        for (int j = 0; j < dtSubmenu.Rows.Count; j++)
                        {
                            StrMenu.Append("<li><a href='../StaticPages.aspx?PageID=" + dtSubmenu.Rows[j]["id"] + "' title='" + dtSubmenu.Rows[j]["PageName"] + "'>" + dtSubmenu.Rows[j]["PageName"] + "</a> </li>");
                        }
                        StrMenu.Append("</ul>");
                        StrMenu.Append("</li>");
                    }
                    else
                    {
                        //if (PageName == dt.Rows[i]["PageName"].ToString())
                        //{
                        //    StrMenu.Append("<li class='active'><a href='../StaticPages.aspx?PageID=" + dt.Rows[i]["id"] + "' title='" + dt.Rows[i]["PageName"] + "'>" + dt.Rows[i]["PageName"] + "</a>");//</li>
                        //}
                        //else
                        //{
                        StrMenu.Append("<li><a href='../StaticPages.aspx?PageID=" + dt.Rows[i]["id"] + "' title='" + dt.Rows[i]["PageName"] + "'>" + dt.Rows[i]["PageName"] + "</a>");//</li>
                        // }
                    }
                }
                //StrMenu.Append("<li class='test' style='background:none;'><a href='Admin/Adminlogin.aspx' title='Login'>Login</a></li>");

                //StrMenu.Append("<li>");
                //StrMenu.Append("<a href='../Calculators.aspx' title='Calculators'>Calculators</a>");
                //StrMenu.Append("</li>");
                //StrMenu.Append("<li>");
                //StrMenu.Append("<a href='../RealEstateNews.aspx' title='Real Estate News'>Real Estate News</a>");
                //StrMenu.Append("</li>");
                //StrMenu.Append("<li>");
                //StrMenu.Append("<a href='../About.aspx' title='About Us'>About Us</a>");
                //StrMenu.Append("</li>");
                //StrMenu.Append("<li class='test' style='background:none;'><a href='Free-home-evaluation.aspx' title='Home Evaluation'>Home Evaluation</a></li>");
                //StrMenu.Append("<li class='test' style='background:none;'><a href='ContactUs.aspx' title='Contact Us'>Contact Us</a></li>");
                StrMenu.Append("<li class='test' style='background:none;'><a href='admin/adminlogin.aspx' title='Login'>Login</a></li>");
                StrMenu.Append("</ul>");
            }
            //dynamicmenus.Text = StrMenu.ToString();

        }
        protected void SiteSetting()
        {
            try
            {
                DataTable dt = clsobj.GetSiteSettings();
                DataTable dt1 = clsobj.GetUserInfo();
                if (dt.Rows.Count > 0)
                {
                    //lblmail.Text = Convert.ToString(dt.Rows[0]["Email"]);
                    //lblphone.Text = Convert.ToString(dt.Rows[0]["PhoneNumber"]);
                    //lblaaddress.Text = Convert.ToString(dt1.Rows[0]["Address"]);
                    siteTitle.Text = Convert.ToString(dt.Rows[0]["Title"]);
                    lblbrkerOnephn.Text = Convert.ToString(dt.Rows[0]["PhoneNumber"]);
                    lblbrkrTwoPhn.Text = Convert.ToString(dt.Rows[0]["Fax"]);
                    lblbrkerOnephnFooter.Text = Convert.ToString(dt.Rows[0]["PhoneNumber"]);
                    lblbrkrTwoPhnFooter.Text = Convert.ToString(dt.Rows[0]["Fax"]);
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

        protected DataTable GetTestimonials()
        {
            DataTable dt = new DataTable();
            try
            {
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                string str = "select * from [dbo].[Testimonials]";
                SqlDataAdapter adp = new SqlDataAdapter(str, conn);
                adp.Fill(dt);
                //if (dt.Rows.Count > 0)
                //{

                //    grdTestimonials.DataSource = dt;
                //    grdTestimonials.DataBind();
                //    //lblcomments.Text = (dt.Rows[i]["Comments"].ToString());
                //    //lblname.Text = (dt.Rows[i]["FirstName"].ToString());

                //}
                if (dt.Rows.Count > 0)
                {
                    grdTestimonials.DataSource = dt;
                    grdTestimonials.DataBind();
                    divcominr.Visible = false;
                }
                else
                {
                    divcominr.Visible = true;
                    sliderTestimonial.Visible = false;

                }
            }
            catch (Exception ex)
            { }
            finally
            {
                conn.Close();
            }
            return dt;
        }

        protected void bindBnanners()
        {
            StringBuilder html = new StringBuilder();
            DataTable dt = clsobj.GetAllBanner();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string Images;
                Images = "/admin/uploadfiles/" + dt.Rows[i]["FileName"].ToString();
                if (Images != "")
                {
                    html.AppendLine("<img src='" + Images + "'  data-thumb='" + Images + "'  alt='banner" + i + "' />");
                }
            }
            ltrImgs.Text = html.ToString();
        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                Session["SearchType"] = null;
                Session["SearchType"] = "Residential";
                string var = txtSearch.Text;
                Response.Redirect("~/Search.aspx?SearchType=" + Session["SearchType"].ToString() + "&Municipality=" + txtSearch.Text + "", false);
                //Response.Redirect("~/Search.aspx?Municipality=" + var, false);
               
            }
            catch (Exception ex)
            {
            }
            finally
            { }
        }

        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]
        public static String[] GetAutoCompleteData(string prefixText, int count, string contextKey)
        {
            List<String> itemNames = new List<String>();
            Property1.MLSDataWebServiceSoapClient ml = new Property1.MLSDataWebServiceSoapClient();
            DataTable dt = ml.GetAutoCompleteData(prefixText);
            foreach (DataRow dr in dt.Rows)
            {
                String item = dr["Province"].ToString();
                itemNames.Add(item);
            }
            string[] prefixTextArray = itemNames.ToArray();
            return prefixTextArray;
        }
        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]
        public static String[] GetAutoCompleteData_Comm(string prefixText, int count, string contextKey)
        {
            List<String> itemNames = new List<String>();
            Property1.MLSDataWebServiceSoapClient ml = new Property1.MLSDataWebServiceSoapClient();
            DataTable dt = ml.GetAutoCompleteData_Comm(prefixText);
            foreach (DataRow dr in dt.Rows)
            {
                String item = dr["Province"].ToString();

                itemNames.Add(item);
            }
            string[] prefixTextArray = itemNames.ToArray();
            return prefixTextArray;
        }

        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]
        public static String[] GetAutoCompleteData_Condo(string prefixText, int count, string contextKey)
        {
            List<String> itemNames = new List<String>();
            Property1.MLSDataWebServiceSoapClient ml = new Property1.MLSDataWebServiceSoapClient();
            DataTable dt = ml.GetAutoCompleteData_Condo(prefixText);
            foreach (DataRow dr in dt.Rows)
            {
                String item = dr["Province"].ToString();

                itemNames.Add(item);
            }
            string[] prefixTextArray = itemNames.ToArray();
            return prefixTextArray;
        }


    }
}