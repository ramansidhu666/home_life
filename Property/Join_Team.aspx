﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PropertyNew.Master" AutoEventWireup="true" CodeBehind="Join_Team.aspx.cs" Inherits="Property.Join_Team" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="slider/css/bootstrap.min.css" rel="stylesheet" />
    <link href="slider/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="slider/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="slider/css/media-queries.css" rel="stylesheet" />
    <link href="slider/css/font.css" rel="stylesheet" />
    <link href="css/font.css" rel="stylesheet" />
    <link href="slider/css/style.css" rel="stylesheet" />
    <link href="css/shortcodes.css" rel="stylesheet" />
    <link href="slider/css/font-awesome.css" rel="stylesheet" />
    <script type="text/javascript" src="slider/js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="js/jssor.js"></script>
    <script type="text/javascript" src="js/jssor.slider.js"></script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="Free-Home_new">
            <div class="property-search-container">
                <div class="dt-sc-tabs-container" style="width: 100%;">
                    <ul class="dt-sc-tabs-frame">
                        <li><a class="current" href="#">Join Our Team</a></li>
                    </ul>
                    <div style="display: block;" class="dt-sc-tabs-frame-content">
                        <div id="divcomin" runat="server" class="comin_soon">
                            <img alt="" src="images/cming_soon.png" />
                        </div>
                        <div class="Free-Home_new">
                            <asp:GridView ID="grdBannerShow" AutoGenerateColumns="False" OnRowCommand="GrdBlogList_RowCommand" PageSize="10" runat="server">
                                <Columns>
                                    <asp:TemplateField SortExpression="ID">
                                        <ItemTemplate>
                                            <img src='/admin/uploadfiles/<%#Eval("FileName") %>' alt="" style="width: 100%; height: 100%; margin-top: -35px;" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
