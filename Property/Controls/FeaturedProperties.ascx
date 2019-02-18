﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FeaturedProperties.ascx.cs"
    Inherits="Property.FeaturedProperties" %>
<div id="FeatureId" visible="false" runat="server">
    <asp:DataList ID="dlFeatured" runat="server" RepeatColumns="3" RepeatLayout="Flow" OnItemDataBound="dlFeatured_ItemDataBound">
        <ItemTemplate>
            <div class="right_section">
                <div class="box3">
                    <div class="boxx">
                         <div class="boxx-left" style="margin: 0px" >
                            <div class="top_sct_cntnt">
                              <h2>  <span>F</span>eatured Property</h2>
                                <%--<asp:Label ID="lbladdress" Text="Featured Property" runat="server"></asp:Label>--%>
                            </div>

                           <div class="property_areadesc">
                                <asp:Label ID="lblRemarksForClients" Visible="false" Text='<%# Eval("RemarksForClients")  %>' runat="server"></asp:Label>
                            </div>

                        </div>
                        <div class="box_right1">
                            <a href='../PropertyDetails.aspx?MLSID=<%# Eval("MLS")%>&PropertyType=<%#Eval("pType") %>'>
                                <img src='<%# Eval("pImage")%>' alt="FeaturedProperty" title="Featured Property" height="144px" width="189px" /></a>
                           <%-- <div class="price_tag">
                            </div>--%>
                           <%-- <p style="color: red; margin-left: 4px;">
                                <%# Eval("ListPrice")%>
                            </p>--%>
                        </div>
                          <div class="shadow_img">
                            <asp:Image src="images/shadow_img.png" runat="server" />
                        </div>
                    </div>
                    <br />
                    <br />
                </div>
            </div>
        </ItemTemplate>
        <SeparatorTemplate>
            <div class="seprater"></div>
        </SeparatorTemplate>
    </asp:DataList>
</div>