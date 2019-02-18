<%@ Page Title="" Language="C#" MasterPageFile="~/PropertyNew.Master" AutoEventWireup="true" CodeBehind="Change_Password.aspx.cs" Inherits="Property.Change_Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
     <link href="css/style.css" rel="stylesheet" />
    <link href="css/style_002.css" rel="stylesheet" />
    <link href="css/styleBackup.css" rel="stylesheet" />
    <link href="css/shortcodes.css" rel="stylesheet" />
       <link href="css/font.css" rel="stylesheet" />
    <script type="text/javascript" src="js/shortcodes.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--<link href="slider/css/style.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/style_002.css" rel="stylesheet" />
    <link href="css/shortcodes.css" rel="stylesheet" />
        <link href="css/font.css" rel="stylesheet" />--%>
     <div class="container">
    <div class="wrapper_new">
           <div class="Free-Home_new">
            <div class="wrapper_new">
                <div class="property-search-container">
                    <div class="dt-sc-tabs-container" style="width: 100%;">
                        <ul class="dt-sc-tabs-frame">
                            <li><a class="current" href="#">Change Password</a></li>
                        </ul>
                     
                        <div style="display: block;" class="dt-sc-tabs-frame-content">
                               <%-- <div class="login_input">
                                    <label> E-mail/User Name</label>
                                    <label style="color: red">*</label>
                                    <asp:TextBox ID="txtUserName" runat="server" MaxLength="50" PlaceHolder="E-mail"  OnTextChanged="txtUserName_TextChanged"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ErrorMessage="*" ControlToValidate="txtUserName"
                                        ValidationGroup="SaveRegInfo" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                        ControlToValidate="txtUserName" ForeColor="Red" ErrorMessage="Invalid email!" ValidationGroup="SaveRegInfo">  
                                    </asp:RegularExpressionValidator>
                                    <asp:Label ID="lblUserMsg" runat="server" ForeColor="Red"></asp:Label>
                                      <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                <asp:Button ID="btnSubmit" runat="server" Style="clear: none;" Text="Submit" OnClick="btnSubmit_Click"  />
                                </div>--%>
                       
                        <div id="divpassword" runat="server" >
                            <div class="property-type-module medium-module">
                                <div class="login_input">
                                    <label>
                                        Old Password</label>
                                    <label style="color: red">*</label>
                                    <asp:TextBox ID="oldpasword" runat="server" TextMode="Password" MaxLength="50" PlaceHolder="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Old Password is Required"
                                        ControlToValidate="oldpasword" ForeColor="Red" ValidationGroup="ChangePasswordInfo" 
                                        ></asp:RequiredFieldValidator>
                                </div>
                            </div>
                          <div class="property-type-module medium-module">
                                <div class="login_input">
                                    <label>
                                       New Password</label>
                                    <label style="color: red">*</label>
                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="50" PlaceHolder="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Password is Required"
                                        ControlToValidate="txtPassword" ForeColor="Red" ValidationGroup="ChangePasswordInfo"
                                        ></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="property-type-module medium-module">
                                <div class="login_input">
                                    <label>
                                        Confirm Password</label>
                                    <label style="color: red">*</label>
                                    <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" MaxLength="50" Placeholder="Confirm Passowrd"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="reqConfirmPassword" runat="server" ErrorMessage="Confirm Password is Required"
                                        ControlToValidate="txtConfirm" ValidationGroup="ChangePasswordInfo" Display="Dynamic"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="cmpPassword" runat="server" ControlToValidate="txtConfirm"
                                        ControlToCompare="txtPassword" ForeColor="Red" ValidationGroup="ChangePasswordInfo"
                                        Display="Dynamic" ErrorMessage="Password Don't Match"></asp:CompareValidator>
                                </div>
                            </div>
                            <div class="login_input_1">
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                <asp:Button ID="btnChange" runat="server" Style="clear: none;" Text="Submit" OnClick="btnChange_Click" ValidationGroup="ChangePasswordInfo" />
                            </div>
                            </div>

                         </div>
                      
                
          </div></div></div></div></div></div>
</asp:Content>

