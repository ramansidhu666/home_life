﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Property_cls;

namespace Property
{
    public partial class FeaturedProperties : System.Web.UI.UserControl
    {
        #region Page Load

        protected void Page_Load(object sender, EventArgs e)
        {
            GetFeaturedProperties();

        }

        #endregion Page Load
        #region Other Method
        void GetFeaturedProperties()
        {
            try
            {
                DataTable dtIDs = new DataTable();
                cls_Property objprp = new cls_Property();
                dtIDs = objprp.GetFeturedIDsTop3();
                String result = dtIDs.AsEnumerable()
                      .Select(row => row["MLSID"].ToString())
                      .Aggregate((s1, s2) => String.Concat(s1, "," + s2));
                Property1.MLSDataWebServiceSoapClient mlsClient = new Property1.MLSDataWebServiceSoapClient();
                DataTable dt = mlsClient.FeatureListing(result);     
                dlFeatured.DataSource = dt;
                dlFeatured.DataBind();      
                Session["SearchType"] = "IDXImagesResidential";
                mlsClient = null;
                if (dt.Rows.Count >0)
                {
                    FeatureId.Visible = true;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {

            }
        }
        #endregion Other Method
        protected void dlFeatured_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label lbl = (Label)e.Item.FindControl("lblRemarksForClients");
                //Label lbl = (Label)dlFeatured.FindControl("lblRemarksForClients");
                string remark = lbl.Text;
                if (remark.Length > 100)
                {
                    string discriptionresi1 = remark.Substring(0, 70);
                    lbl.Text = discriptionresi1;
                }
            }
        }
    }
}