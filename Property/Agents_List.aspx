<%@ Page Title="" Language="C#" MasterPageFile="~/PropertyNew.Master" AutoEventWireup="true" CodeBehind="Agents_List.aspx.cs" Inherits="Property.Agents_List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
   <link href="css/font.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/shortcodes.css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="js/shortcodes.js"></script>
    <script type="text/javascript" src="js/jquery_009.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="Free-Home_new">
            <div class="property-search-container">
                <div class="dt-sc-tabs-container" style="width: 100%;">
                    <ul class="dt-sc-tabs-frame">
                        <li><a class="current" href="#">Our Team</a></li>
                    </ul>
                    <div style="display: block;" class="dt-sc-tabs-frame-content">
                        <div class="Free-Home_new">
                            <div id="divcominr" runat="server" class="comin_soon">
                                <img alt="" src="images/cming_soon.png" />
                            </div>
                            <asp:Repeater ID="grdBanfdsfsnerShow" runat="server">
                                <HeaderTemplate>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <div class="test_bg_image">
                                        <div class="name1">
                                            <a href='Agent_Profile.aspx?id=<%# Eval("id")%>'>
                                                <img src='/admin/uploadfiles/<%#Eval("FileName") %>' alt="" width="100px" height="100px" /></a>
                                        </div>
                                        <div class="nametext1">
                                            <span class="span1"><%# Eval("FirstName") %> <%# Eval("LastName")%></span><br />
                                            <span>Sales Representative</span>
                                          
                                        <div class="agnt_cntct">
                                            <p>
                                            <a href='Contact_Agent.aspx?id=<%# Eval("id")%>'>Email Me</a></p>
                                            <p>
                                            <a id="agentsite" href='<%# Eval("SiteUrl") %>' runat="server">See My Site</a></p>
                                        </div>
                                          </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                              

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

