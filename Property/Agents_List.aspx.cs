using Property_cls;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Property
{
    public partial class Agents_List : System.Web.UI.Page
    {
        #region Global
        #region Global
        cls_Property clsobj = new cls_Property();
        #endregion Global

        Property1.MLSDataWebServiceSoapClient mlsClient = new Property1.MLSDataWebServiceSoapClient();

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

        #endregion Global

        protected void Page_Load(object sender, EventArgs e)
        {
            FillGridData();
        }
        #region Grid_Method and Grid's Event

        protected void FillGridData()
        {
            try
            {
                DataTable dt = new DataTable();
                dt = clsobj.GetAgents();
                if (dt.Rows.Count > 0)
                {
                    grdBanfdsfsnerShow.DataSource = dt;
                    grdBanfdsfsnerShow.DataBind();
                    divcominr.Visible = false;
                }
                else
                {
                    divcominr.Visible = true;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        protected void grdTestimonials_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                //DataTable dt = new DataTable();
                //dt = clsobj.GetAgents();
                //Label label = (Label)e.Item.FindControl("lblname");
                //label.Text = dt.Rows[0]["FirstName"].ToString() + " " + (dt.Rows[0]["LastName"].ToString());
                //Label lblname = (Label)e.Item.FindControl("lbllink");
                //lblname.Text = dt.Rows[0]["FirstName"].ToString() + " " + (dt.Rows[0]["LastName"].ToString());
            }
        }
        #endregion Grid_Method and Grid's Event
    }
}