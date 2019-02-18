<%@ Page Title="" Language="C#" MasterPageFile="~/PropertyNew.Master" AutoEventWireup="true"
    CodeBehind="Registration.aspx.cs" Inherits="Property.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
     <link href="css/shortcodes.css" rel="stylesheet" />
    <link href="css/styleBackup.css" rel="stylesheet" />
    <link href="css/style_002.css" rel="stylesheet" />
    <link href="slider/css/style.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
     <div class="container">
    <div class="wrapper_new">
        <div class="property-search-container">
            <div class="dt-sc-tabs-container" style="width: 100%;">
                <ul class="dt-sc-tabs-frame">
                    <li><a class="current" href="#">User Registration</a></li>
                </ul>
                <div style="display: block;" class="dt-sc-tabs-frame-content">
                    <div class="property-type-module medium-module">
                        <div class="login_input">
                            <label>
                                Name</label>
                            <asp:TextBox ID="txtName" runat="server" MaxLength="50" PlaceHolder="Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Name is Required"
                                ControlToValidate="txtName" ForeColor="Red" ValidationGroup="SaveRegInfo" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="property-type-module medium-module">
                        <div class="login_input">
                            <label>
                                Address</label>
                            <asp:TextBox ID="txtAddress" runat="server" MaxLength="140" PlaceHolder="Address"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Address is Required"
                                ControlToValidate="txtAddress" ForeColor="Red" ValidationGroup="SaveRegInfo"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="property-type-module medium-module">
                        <div class="login_input">
                            <label>
                                City</label>
                            <asp:TextBox ID="txtCity" runat="server" MaxLength="50" PlaceHolder="City"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="City is Required"
                                ControlToValidate="txtCity" ForeColor="Red" ValidationGroup="SaveRegInfo" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="property-type-module medium-module">
                        <div class="login_input">
                            <label>
                                State</label>
                            <asp:TextBox ID="txtState" runat="server" MaxLength="50" PlaceHolder="State"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="State is Required"
                                ControlToValidate="txtState" ForeColor="Red" ValidationGroup="SaveRegInfo" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="property-type-module medium-module">
                        <div class="login_input">
                            <label>
                                Phone Number</label>
                            <asp:TextBox ID="txtPhoneNo" runat="server" MaxLength="50" PlaceHolder="Phone Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPhoneNo" runat="server" ErrorMessage="Phone Number is Required"
                                ControlToValidate="txtPhoneNo" ForeColor="Red" ValidationGroup="SaveRegInfo"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regPhone" runat="server" ControlToValidate="txtPhoneNo"
                                ValidationExpression="^(\(\d{3}\) \d{3}-\d{4}|\d{3}-\d{3}-\d{4}|\d{10})$" ForeColor="Red"
                                Text="Enter a valid phone number" />
                        </div>
                    </div>
                    <div class="property-type-module medium-module">
                        <div class="login_input">
                            <label>
                                E-mail/User Name</label>
                            <asp:TextBox ID="txtUserName" runat="server" MaxLength="50" PlaceHolder="E-mail" AutoPostBack="true"  OnTextChanged="txtUserName_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ErrorMessage="User Name is Required"
                                ControlToValidate="txtUserName" ForeColor="Red" ValidationGroup="SaveRegInfo"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:Label ID="lblUserMsg" runat="server" ForeColor="Red"></asp:Label>
                        </div>
                    </div>
                    <div class="property-type-module medium-module">
                        <div class="login_input">
                            <label>
                                Password</label>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="50" PlaceHolder="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password is Required"
                                ControlToValidate="txtPassword" ForeColor="Red" ValidationGroup="SaveRegInfo"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="property-type-module medium-module">
                        <div class="login_input">
                            <label>
                                Confirm Password</label>
                            <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" MaxLength="50" Placeholder="Confirm Passowrd"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqConfirmPassword" runat="server" ErrorMessage="Confirm Password is Required"
                                ControlToValidate="txtConfirm" ValidationGroup="SaveRegInfo" Display="Dynamic"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cmpPassword" runat="server" ControlToValidate="txtConfirm"
                                ControlToCompare="txtPassword" ForeColor="Red" ValidationGroup="SaveRegInfo"
                                Display="Dynamic" ErrorMessage="Password Don't Match"></asp:CompareValidator>
                        </div>
                    </div>
                    <div class="login_input_1">
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        <asp:Button ID="btnSave" runat="server" Text="Save" ValidationGroup="SaveRegInfo"
                            OnClick="btnSave_Click" />
                        <asp:Button ID="btnBack" runat="server" Style="clear: none;" Text="Back" OnClick="btnBack_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>

         </div>
</asp:Content>
