<%@ Page Title="" Language="C#" MasterPageFile="~/PropertyNew.Master" AutoEventWireup="true" CodeBehind="sweepstakes.aspx.cs" Inherits="Property.sweepstakes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
           <link href="css/style.css" rel="stylesheet" />
    <link href="css/styleBackup.css" rel="stylesheet" />
    <link href="css/style_002.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
     <div class="swep_sct_bg_new">
         <div class="col-md-6 col-sm-6">
   <div class="swep_sct_bg">
       <h2>Enter to WIN the HomeLife Sweepstakes</h2>
     <div class="col-md-12 col-sm-12">
        <div class="col-md-6 col-sm-6">
            <div class="sweep_sct">
            <p>
                First Name:<asp:RequiredFieldValidator ID="reqFirstName" runat="server" ErrorMessage="*"
            ControlToValidate="txtFirstName" ValidationGroup="SaveContactInfo" ForeColor="Red"
            Display="Dynamic"></asp:RequiredFieldValidator>
            </p>
            <asp:TextBox ID="txtFirstName" CssClass="CTextBox" runat="server" PlaceHolder="First Name"></asp:TextBox>
        </div>
            </div>
        <div class="col-md-6 col-sm-6">
            <div class="sweep_sct">
            <p>
                Last Name:
              <asp:RequiredFieldValidator ID="reqLastName" runat="server" ErrorMessage="*" ControlToValidate="txtLastName"
            ValidationGroup="SaveContactInfo" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </p>
            <asp:TextBox ID="txtlastname" CssClass="CTextBox" runat="server" PlaceHolder="LastName"></asp:TextBox>
        </div>
    </div>
    </div>
    <div class="col-md-12 col-sm-12">
        <div class="col-md-6 col-sm-6">
            <div class="sweep_sct">
            <p>
                Province:
            </p>
            <asp:DropDownList ID="ddlprovince" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                 <asp:ListItem>Alberta</asp:ListItem>
                 <asp:ListItem>British Columbia">British Columbia</asp:ListItem>
                 <asp:ListItem>Manitoba</asp:ListItem>
                 <asp:ListItem>New Brunswick</asp:ListItem>
                 <asp:ListItem>Newfoundland and Labrador</asp:ListItem>
                 <asp:ListItem>Northwest Territories</asp:ListItem>
                 <asp:ListItem>Nova Scotia</asp:ListItem>
                 <asp:ListItem>Nunavut</asp:ListItem>
                 <asp:ListItem>Ontario</asp:ListItem>
                 <asp:ListItem>Prince Edward Island</asp:ListItem>
                 <asp:ListItem>Quebec</asp:ListItem>
                 <asp:ListItem>Saskatchewan</asp:ListItem>
                 <asp:ListItem>Yukon</asp:ListItem>

            </asp:DropDownList>
             
        </div>
            </div>
        <div class="col-md-6 col-sm-6">
            <div class="sweep_sct">
            <p>
                City:
            </p>
            <asp:TextBox ID="txtcity" CssClass="CTextBox" runat="server" PlaceHolder="City"></asp:TextBox>
        </div>
    </div>
    </div>
    <div class="col-md-12 col-sm-12">
        <div class="col-md-6 col-sm-6">
            <div class="sweep_sct">
            <p>
                Address:<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                    ControlToValidate="txtAddress" ValidationGroup="SaveContactInfo" ForeColor="Red"
                    Display="Dynamic"></asp:RequiredFieldValidator>
            </p>
            <asp:TextBox ID="txtAddress" CssClass="CTextBox" runat="server" PlaceHolder="Address"></asp:TextBox>
        </div>
            </div>
        <div class="col-md-6 col-sm-6">
            <div class="sweep_sct">
            <p>
                Postal Code:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtpostalcode"
            ValidationGroup="SaveContactInfo" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
              <%--  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ControlToValidate="txtpostalcode" ErrorMessage="Invalid email!" ValidationGroup="SaveContactInfo">  
                </asp:RegularExpressionValidator>--%>
            </p>
            <asp:TextBox ID="txtpostalcode" CssClass="CTextBox" runat="server" PlaceHolder="Postal Code"></asp:TextBox>
        </div>
            </div>
    </div>
    <div class="col-md-12 col-sm-12">
        <div class="col-md-6 col-sm-6">
                        <div class="sweep_sct">
           <p>
        Phone Number:
        <asp:RequiredFieldValidator ID="reqPhoneno" runat="server" ErrorMessage="*" ControlToValidate="txtPhoneno"
            ValidationGroup="SaveContactInfo" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ValidationGroup="SaveContactInfo" runat="server" ErrorMessage="Invalid Phone no."
            ControlToValidate="txtPhoneno" ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator ></p>
            <asp:TextBox ID="txtPhoneno" CssClass="CTextBox" runat="server" PlaceHolder="Phone Number"></asp:TextBox>
        </div>
            </div>
        <div class="col-md-6 col-sm-6">
                        <div class="sweep_sct">
            <p>
                Email Address:
       <asp:RequiredFieldValidator ID="reqEmail" runat="server" ErrorMessage="*" ControlToValidate="txtEmail"
            ValidationGroup="SaveContactInfo" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
        ControlToValidate="txtEmail" ErrorMessage="Invalid email!" ValidationGroup="SaveContactInfo" ForeColor="Red">  
    </asp:RegularExpressionValidator>
            </p>
            <asp:TextBox ID="txtEmail" CssClass="CTextBox" runat="server" PlaceHolder="Email"></asp:TextBox>
        </div>
            </div>
    </div>
    <div class="col-md-12 col-sm-12">
        <div class="col-md-6 col-sm-6">
                        <div class="sweep_sct">
            <p>
                Your Sales Representative Is:<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*"
                    ControlToValidate="txtsales" ValidationGroup="SaveContactInfo" ForeColor="Red"
                    Display="Dynamic"></asp:RequiredFieldValidator>
            </p>
            <asp:TextBox ID="txtsales" CssClass="CTextBox" runat="server" PlaceHolder="Your Sales Representative Is"></asp:TextBox>
        </div>
            </div>
    </div>
    <div class="col-md-12 col-sm-12">
        <div class="col-md-6 col-sm-6">
                        <div class="sweep_sct">
            <p>
                Residence Information
            </p>
            <h5>Do You</h5>
           
             <asp:RadioButton ID="rdown" ValidationGroup="ca" runat="server" /><asp:Label ID="Label1" runat="server">Own</asp:Label>
         <asp:RadioButton ID="rdrent" ValidationGroup="ca" runat="server" /><asp:Label ID="Label2" runat="server">Rent</asp:Label>
        </div>
            </div>
        <div class="col-md-6 col-sm-6">
                        <div class="sweep_sct">
            <p>
                Years In Home
            </p>
            <asp:DropDownList ID="ddlyearsofhome" runat="server">
                <asp:ListItem>6 Months</asp:ListItem>
                <asp:ListItem>12 Months</asp:ListItem>
                <asp:ListItem>16 Months</asp:ListItem>
                <asp:ListItem>20 Months</asp:ListItem>
                <asp:ListItem>24 Months</asp:ListItem>
                <asp:ListItem>36 Months</asp:ListItem>
                <asp:ListItem>72 Months</asp:ListItem>
                <asp:ListItem>Over 10 Years</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>

            </asp:DropDownList>
        </div>
     </div>
    </div>
    <div class="col-md-12 col-sm-12">
        <div class="col-md-6 col-sm-6">
                        <div class="sweep_sct">
            <p>
                What you intend to do
            </p>
            <h5>Are you thinking of: </h5>
            <asp:CheckBox ID="chkbuying" runat="server" /><asp:Label ID="lblbuying" runat="server">Buying</asp:Label><br />
            <asp:CheckBox ID="chkmortage" runat="server" /><asp:Label ID="Label4" runat="server"> Mortgaging / Refinancing?</asp:Label><br />
            <asp:CheckBox ID="chkinsurance" runat="server" /><asp:Label ID="Label5" runat="server">Insurance Advice?</asp:Label><br />
            <asp:CheckBox ID="chkanalysis" runat="server" /><asp:Label ID="Label6" runat="server">Would you like a free market analysis?</asp:Label><br />
        </div>
            </div>
        <div class="col-md-6 col-sm-6">
                        <div class="sweep_sct">
            <asp:CheckBox ID="chkselling" runat="server" /><asp:Label ID="Label3" runat="server">Selling?</asp:Label><br />
            <asp:CheckBox ID="chkcareer" runat="server" /><asp:Label ID="Label7" runat="server"> Career in Real Estate?</asp:Label><br />
            <asp:CheckBox ID="chkservices" runat="server" /><asp:Label ID="Label8" runat="server">Moving Services?</asp:Label><br />
            <asp:CheckBox ID="chknewsletter" runat="server" /><asp:Label ID="Label9" runat="server">Are you interested in receiving the Homelife Newsletter?</asp:Label><br />
        </div>
            </div>

    </div>
    <%--<div class="col-md-12 col-sm-12">
        <div class="col-md-6 col-sm-6">
                        <div class="sweep_sct">
            <asp:Label ID="Label10" runat="server"> Mortgaging / Refinancing?</asp:Label><br />
            <a href="#">English</a>
            <a href="#">En Français</a>

        </div>
            </div>
    </div>--%>
    <div style="margin: 0 0 50px 0">
        <asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label>
        <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="Sendbutton" Width="24%"
            UseSubmitBehavior="false" ValidationGroup="SaveContactInfo" OnClick="btnSend_Click" />
    </div>
       </div>
             </div>
         <div class="col-md-6 col-sm-6">
             <div class="sweep_img_sct">
                 <img src="images/sweepstakes1.jpg" />
             </div>

             </div>
         </div>
        </div>
</asp:Content>
