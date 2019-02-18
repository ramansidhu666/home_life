﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true"
    CodeBehind="Features.aspx.cs" Inherits="Property.Admin.Features" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="span9">
        <div class="content">
            <div class="module">
                <div class="module-head">
                    <h3>Scheduled Features</h3>
                </div>
                <div class="module-body">
                    <p>
                        <asp:Button ID="btnCreate" runat="server" CssClass="btn btn-primary" Text="Create Features" OnClick="btnCreate_Click" />
                    </p>
                    <asp:GridView ID="grdFeatures" AllowPaging="true" class="table table-striped table-bordered table-condensed" PageSize="10" AutoGenerateColumns="False"
                            runat="server" OnPageIndexChanging="grdFeatures_PageIndexChanging" OnSorting="grdFeatures_Sorting"
                            OnRowCommand="grdFeatures_RowCommand" OnRowDeleting="grdFeatures_RowDeleting">

                            <Columns>
                                <asp:BoundField DataField="MLS" HeaderText="MLS" SortExpression="MLS"></asp:BoundField>
                                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address"></asp:BoundField>
                                <asp:BoundField DataField="PostalCode" HeaderText="Postal Code" SortExpression="PostalCode"></asp:BoundField>
                                <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province"></asp:BoundField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:ImageButton ID="lnkDelete" runat="server" CommandName="Delete" CommandArgument='<%#Eval("MLS") %>'
                                            OnClientClick="return confirm('Are You Sure You Want to Delete this Record');"
                                            ImageUrl="~/images/negative.png" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                </div>
            </div>
        </div>
        <!--/.content-->
    </div>
    <!--/.span9-->
</asp:Content>
