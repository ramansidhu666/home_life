﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Property_cls;

namespace Property.Admin
{
    public partial class Appointments : System.Web.UI.Page
    {
        #region Global

        cls_Property clsobj = new cls_Property();

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

        #region Page Load

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["FirstName"] == null)
            {
                Response.Redirect("~/Admin/AdminLogin.aspx", false);
            }

            if (!IsPostBack)
                FillGridData();
        }

        #endregion Page Load

        #region Grid Events and Methods

        protected void FillGridData()
        {
            DataView dv = new DataView();
            dv.Table = clsobj.GetScheduledAppointments();

            if (strSortExpression != "" && strSortDirection != "")
            {
                dv.Sort = strSortExpression + " " + strSortDirection;
            }
            if (dv.Count > 0)
            {
                grdAppointments.DataSource = dv;
                grdAppointments.DataBind();

            }
            else
            {
                grdAppointments.DataSource = dv;
                grdAppointments.DataBind();
                alertMSG.Visible = true;
            }

            if (intPageIndex != 0)
                grdAppointments.PageIndex = intPageIndex;
        }

        protected void grdAppointments_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                grdAppointments.PageIndex = e.NewPageIndex;
                FillGridData();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void grdAppointments_Sorting(object sender, GridViewSortEventArgs e)
        {
            try
            {
                strSortExpression = e.SortExpression;
                strSortDirection = GetSortDirection();
                intPageIndex = grdAppointments.PageIndex;
                FillGridData();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        #endregion Grid Events and Methods

        #region Button Click

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashBoard.aspx");
        }

        #endregion Button Click
    }
}