<%@ Page Title="" Language="C#" MasterPageFile="~/PropertyNew.Master" AutoEventWireup="true" CodeBehind="Contact_Agent.aspx.cs" Inherits="Property.Contact_Agent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="css/font.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/shortcodes.css" rel="stylesheet" />
    <link href="css/styleBackup.css" rel="stylesheet" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
 <div class="container">
      <div class="col-md-2 col-sm-2">
          </div>
         <div class="col-md-8 col-sm-8">
    <div class="wrapper_new">
        <div class="property-search-container">
            <div class="dt-sc-tabs-container" style="width: 100%;">
                <ul class="dt-sc-tabs-frame">
                    <li><a class="current" href="#">Contact Agent</a></li>
                </ul>
                <div style="display: block;" class="dt-sc-tabs-frame-content">
                   <div class="contact_agent-info">
                        <div class="agent_input">
                           <p>
                                Name :</p>
                            <asp:TextBox ID="txtName" runat="server" MaxLength="50" PlaceHolder="Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Name is Required"
                                ControlToValidate="txtName" ForeColor="Red" ValidationGroup="SaveRegInfo" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                  
                   
                        <div class="agent_input">
                            <p>
                                Address :</p>
                            <asp:TextBox ID="txtAddress" runat="server" MaxLength="140" PlaceHolder="Address"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Address is Required"
                                ControlToValidate="txtAddress" ForeColor="Red" ValidationGroup="SaveRegInfo"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                   
                   
                        <div class="agent_input">
                         <p>
                                City :</p>
                            <asp:TextBox ID="txtCity" runat="server" MaxLength="50" PlaceHolder="City"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="City is Required"
                                ControlToValidate="txtCity" ForeColor="Red" ValidationGroup="SaveRegInfo" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                   
                  
                        <div class="agent_input">
                            <p>
                                Country :</p>
                            <asp:DropDownList ID="ddlcountry" runat="server"></asp:DropDownList>
                           <%-- <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="State is Required"
                                ControlToValidate="txtState" ForeColor="Red" ValidationGroup="SaveRegInfo" Display="Dynamic"></asp:RequiredFieldValidator>--%>
                        </div>
                   
                   
                     
                        <div class="agent_input">
                           <p>
                                Province Or State :</p>
                            <asp:TextBox ID="txtprovince" runat="server" MaxLength="50" PlaceHolder="Province Or State"></asp:TextBox>
                          
                        </div>
                  
                  
                        <div class="agent_input">
                            <p>
                              Postal Code :</p>
                            <asp:TextBox ID="txtpostalcode" runat="server" MaxLength="50" PlaceHolder="Postal Code"></asp:TextBox>
                         <%--   <asp:RequiredFieldValidator ID="rfvPhoneNo" runat="server" ErrorMessage="Phone Number is Required"
                                ControlToValidate="txtPhoneNo" ForeColor="Red" ValidationGroup="SaveRegInfo"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regPhone" runat="server" ControlToValidate="txtPhoneNo"
                                ValidationExpression="^(\(\d{3}\) \d{3}-\d{4}|\d{3}-\d{3}-\d{4}|\d{10})$"
                                Text="Enter a valid phone number" />--%>
                        </div>
                  
                
                   
                        <div class="agent_input">
                            <p>
                                Phone Number: </p>
                            <asp:TextBox ID="txtPhoneNo" runat="server"  PlaceHolder="Phone Number:"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Phone Number is Required"
                                ControlToValidate="txtPhoneNo" ForeColor="Red"  ValidationGroup="SaveRegInfo"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ControlToValidate="txtPhoneNo"
                                ValidationExpression="^(\(\d{3}\) \d{3}-\d{4}|\d{3}-\d{3}-\d{4}|\d{10})$"
                                Text="Enter a valid phone number" />
                        </div>
                   
                     
                        <div class="agent_input">
                           <p>
                                E-mail Address :</p>
                            <asp:TextBox ID="txtEmail" runat="server" MaxLength="50" PlaceHolder="E-mail Address" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ErrorMessage="Email is Required"
                                ControlToValidate="txtEmail" ForeColor="Red" ValidationGroup="SaveRegInfo"
                                Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:Label ID="lblUserMsg" runat="server" ForeColor="Red"></asp:Label>
                        </div>
                   
                   
                        <div class="agent_input">
                          <p>
                                Your Preferred Contact Method:</p>
                         
                              <div class="form-item ">
                                  <label class="option">
                                      <asp:RadioButton ID="rdemail" Checked="true" GroupName="rd" runat="server" />
                                      Email</label>
                              </div>
                               <div class="form-item ">
                                  <label class="option">
                                      <asp:RadioButton ID="rdphone" GroupName="rd"  runat="server" />
                                     Phone</label>
                              </div>
                        
                    </div>
                     
                        <div class="agent_input">
                         <p>
                                Contact Request Subject:</p>
                            <asp:TextBox ID="txtcntctrqstsub" runat="server"  Placeholder=" Contact Request Subject:"></asp:TextBox>
                         <%--   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Confirm Password is Required"
                                ControlToValidate="txtConfirm" ValidationGroup="SaveRegInfo" Display="Dynamic"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtConfirm"
                                ControlToCompare="txtPassword" ForeColor="Red" ValidationGroup="SaveRegInfo"
                                Display="Dynamic" ErrorMessage="Password Don't Match"></asp:CompareValidator>--%>
                        </div>
                    
                     
                        <div class="agent_input">
                           <p>
                                Contact Request Body: </p>
                            <asp:TextBox ID="txtcntctrqstbody" runat="server"  TextMode="MultiLine" Placeholder="Contact Request Body:"></asp:TextBox>
                         <%--   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Confirm Password is Required"
                                ControlToValidate="txtConfirm" ValidationGroup="SaveRegInfo" Display="Dynamic"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtConfirm"
                                ControlToCompare="txtPassword" ForeColor="Red" ValidationGroup="SaveRegInfo"
                                Display="Dynamic" ErrorMessage="Password Don't Match"></asp:CompareValidator>--%>
                        </div>
                   
                   
                    <div class="agent_input_1">
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
             </div>
     <div class="col-md-2 col-sm-2">
          </div>
     </div>
</asp:Content>

