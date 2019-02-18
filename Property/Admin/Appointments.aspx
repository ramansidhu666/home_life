﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true"
    CodeBehind="Appointments.aspx.cs" Inherits="Property.Admin.Appointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="span9">
        <div class="content">
            <div class="module">
                <div class="module-head">
                    <h3>Scheduled Appointments</h3>
                </div>
                <div class="module-body">
                     <div class="alert" runat="server" id="alertMSG" visible="false">
                        <strong>Sorry!</strong> no records found!
                    </div>
                      <asp:GridView ID="grdAppointments" class="table table-striped table-bordered table-condensed" AllowPaging="true" AutoGenerateColumns="False"
                        runat="server" PageSize="10"
                        OnPageIndexChanging="grdAppointments_PageIndexChanging" OnSorting="grdAppointments_Sorting">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                            <asp:BoundField DataField="PhoneNumber" HeaderText="Phone No" SortExpression="PhoneNumber"></asp:BoundField>
                            <asp:BoundField DataField="AppointmentDate" HeaderText="Date" SortExpression="AppointmentDate"></asp:BoundField>
                            <asp:BoundField DataField="AppointmentTime" HeaderText="Time" SortExpression="AppointmentTime"></asp:BoundField>                          
                        </Columns>
                    </asp:GridView>                                       
                </div>
            </div>
        </div>
        <!--/.content-->
    </div>
    <!--/.span9-->
</asp:Content>
