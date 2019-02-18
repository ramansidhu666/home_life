﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PropertyNew.Master" AutoEventWireup="true"
    CodeBehind="ScheduleAppointment.aspx.cs" Inherits="Property.ScheduleAppointment" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
        <link href="css/shortcodes.css" rel="stylesheet" />
    <link href="css/style_002.css" rel="stylesheet" />
    <link href="slider/css/style.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/styleBackup.css" rel="stylesheet" />
    <script>
    var specialKeys = new Array();
    specialKeys.push(8); //Backspace
    function IsNumeric(e) {
        var keyCode = e.which ? e.which : e.keyCode
        var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
        // document.getElementById("error").style.display = ret ? "none" : "inline";
        return ret;
    }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <ajaxtoolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </ajaxtoolkit:ToolkitScriptManager>
    <div class="container">
        <div class="property-search-container">
            <div class="dt-sc-tabs-container" style="width: 100%;">
                <ul class="dt-sc-tabs-frame">
                    <li><a class="current" href="#">Schedule Your Appointment</a></li>
                </ul>
                <div style="display: block;" class="dt-sc-tabs-frame-content">  
                    <div class="property-type-module medium-module">
                        <div class="login_input">
                            <label>
                                FirstName</label>
                            <asp:TextBox ID="txtFirstName" runat="server" MaxLength="50" PlaceHolder="First Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqFirstName" runat="server" ErrorMessage="FirstName is Required"
                                ControlToValidate="txtFirstName" ForeColor="Red" ValidationGroup="SaveAppointment"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="property-type-module medium-module">
                        <div class="login_input">
                            <label>
                                LastName</label>
                            <asp:TextBox ID="txtLastName" runat="server" MaxLength="50" PlaceHolder="Last Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqLastName" runat="server" ErrorMessage="LastName is Required"
                                ControlToValidate="txtLastName" ForeColor="Red" ValidationGroup="SaveAppointment"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="property-type-module medium-module">
                        <div class="login_input">
                            <label>
                                Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" MaxLength="150" TextMode="Email" PlaceHolder="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqEmail" runat="server" ErrorMessage="Email is Required"
                                ControlToValidate="txtEmail" ForeColor="Red" ValidationGroup="SaveAppointment"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegEmail" runat="server" ErrorMessage="Email is not valid"
                                ValidationGroup="SaveAppointment" SetFocusOnError="true" ControlToValidate="txtEmail"
                                Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                            </asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="property-type-module medium-module">
                        <div class="login_input">
                            <label>
                                Phone Number</label>
                            <asp:TextBox ID="txtPhoneNo" runat="server" MaxLength="50" PlaceHolder="Phone Number" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPhoneNo" runat="server" ErrorMessage="Phone Number is Required"
                                ControlToValidate="txtPhoneNo" ForeColor="Red" ValidationGroup="SaveAppointment"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="SaveContactInfo" runat="server" ErrorMessage="Invalid Phone no."
                                  ControlToValidate="txtPhoneNo" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="property-type-module medium-module">
                        <div class="login_input">
                            <label>
                                Appointment Date</label>
                            <asp:TextBox ID="txtAppointmentDate" runat="server" TextMode="Date" PlaceHolder="Date"></asp:TextBox>
                            <ajaxtoolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtAppointmentDate"
                                PopupButtonID="txtAppointmentDate">
                            </ajaxtoolkit:CalendarExtender>
                            <asp:RequiredFieldValidator ID="reqAppointmentDate" runat="server" ErrorMessage="Appointment Date is Required"
                                ControlToValidate="txtAppointmentDate" ForeColor="Red" ValidationGroup="SaveAppointment"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="property-type-module medium-module">
                        <div class="login_input">
                            <br />
                            <label>
                                Appointment Time</label>
                            <asp:DropDownList ID="ddlAppointmentTime" runat="server">
                                <asp:ListItem Value="0" Text="--select--"></asp:ListItem>
                                <asp:ListItem Value="9am-11am" Text="9am-11am"></asp:ListItem>
                                <asp:ListItem Value="11am-1pm" Text="11am-1pm"></asp:ListItem>
                                <asp:ListItem Value="1pm-3pm" Text="1pm-3pm"></asp:ListItem>
                                <asp:ListItem Value="3pm-5pm" Text="3pm-5pm"></asp:ListItem>
                                <asp:ListItem Value="5pm-7pm" Text="5pm-7pm"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="reqAppointmentTime" runat="server" ErrorMessage="Appointment Time is required"
                                InitialValue="0" ControlToValidate="ddlAppointmentTime" ValidationGroup="SaveAppointment"
                                SetFocusOnError="true" CssClass="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="property-type-module medium-module">
                        <div class="login_input">
                            <br />
                            <label>
                                Notes</label>
                            <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Text="" PlaceHolder="Notes"></asp:TextBox>
                        </div>
                    </div>
                    <div class="property-type-module medium-module">
                        <div class="login_input">             
                        </div>
                    </div>
                    <div class="login_input">
                        <asp:Button ID="btnSave" runat="server" style="width:14%;" Text="Save" ValidationGroup="SaveAppointment"
                            OnClick="btnSave_Click" />
                    </div>
                     <asp:Label ID="lblmsg" runat="server" ForeColor="Red" ></asp:Label>
                </div>
            </div>
        </div></div>
</asp:Content>
