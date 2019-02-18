<%@ Page Title="" Language="C#" MasterPageFile="~/PropertyNew.Master" AutoEventWireup="true"
    CodeBehind="Free-home-evaluation.aspx.cs" Inherits="Property.Free_home_evaluation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
      <link href="css/style.css" rel="stylesheet" />
    <link href="css/styleBackup.css" rel="stylesheet" />
    <link href="css/style_002.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <div class="container">
   <div class="Free-Home_1">
    <div class="top_text">
        <h1 style="color: Red;">Find Free Home Evaluation </h1>
    </div>
    <div class="top_text">
        The EQUITY in your HOME is like any other Investment - it needs to be monitored.
        Homeowners should have their EQUITY evaluated once a year. Now might be the perfect
        time... And it is FREE, WITH NO OBLIGATION! Just fill out the form below.
    </div>
    <div class="top_text">
        We ONLY collect personal information necessary to effectively market and to sell
        the property of sellers, to locate, assess and qualify properties for buyers, and
        to otherwise provide professional services to clients and customers. <b>We do not sell,
            trade, transfer, rent or exchange your personal information with anyone.</b>
        We appreciate the trust you are placing in us.
    </div>
    <div class="Free-Home">
        <div class="Infomation">
            <asp:Label ID="lblProvince" runat="server" Text="Province"></asp:Label>
            <asp:TextBox ID="txtProvince" MaxLength="10" runat="server" PlaceHolder="Province"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="FreeHome" runat="server" Display="Dynamic" ForeColor="Red" ControlToValidate="txtProvince" ErrorMessage="Province required" SetFocusOnError="true"></asp:RequiredFieldValidator>
        </div>
        <div class="Infomation">
            <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
            <asp:TextBox ID="txtCity" runat="server" MaxLength="10" PlaceHolder="City"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RfvCity" runat="server" ValidationGroup="FreeHome" Display="Dynamic" ForeColor="Red" ControlToValidate="txtCity" ErrorMessage="City required " SetFocusOnError="true"></asp:RequiredFieldValidator>
        </div>
        <div class="Infomation">
            <asp:Label ID="lblArea" runat="server" Text="Area"></asp:Label>
            <asp:TextBox ID="txtArea" runat="server" MaxLength="20" PlaceHolder="Area"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvArea" runat="server" ValidationGroup="FreeHome" Display="Dynamic" ForeColor="Red" ControlToValidate="txtArea" ErrorMessage="Area required " SetFocusOnError="true"></asp:RequiredFieldValidator>
        </div>
        <div class="Infomation">
            <asp:Label ID="lblAddress" runat="server" Text="Street Address"></asp:Label>
            <asp:TextBox ID="txtAddress" MaxLength="50" runat="server" PlaceHolder="Street Address"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAddress" ValidationGroup="FreeHome" runat="server" Display="Dynamic" ForeColor="Red" ControlToValidate="txtAddress" ErrorMessage=" Street Address required" SetFocusOnError="true"></asp:RequiredFieldValidator>
        </div>
        <div class="Infomation">
            <asp:Label ID="lblBedroom" runat="server" Text="Number of Bedrooms:"></asp:Label>
            <asp:TextBox ID="txtBedroom" runat="server" MaxLength="2" PlaceHolder="Number of Bedrooms"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator3" runat="server" Operator="DataTypeCheck" Type="Integer"
                ControlToValidate="txtBedroom" ForeColor="Red" ErrorMessage="Value must be number" ValidationGroup="FreeHome" />
        </div>
        <div class="Infomation">
            <asp:Label ID="lblBathroom" runat="server" Text="Number of Bathrooms:"></asp:Label>
            <asp:TextBox ID="txtBathroom" runat="server" MaxLength="2" PlaceHolder="Number Of Bathrooms"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator4" runat="server" Operator="DataTypeCheck" Type="Integer"
                ControlToValidate="txtBathroom" ForeColor="Red" ErrorMessage="Value must be number" ValidationGroup="FreeHome" />
        </div>
        <div class="Infomation">
            <asp:Label ID="lblLotSize" runat="server" Text="Lot Size / Acreage:"></asp:Label>
            <asp:TextBox ID="txtLotSize" MaxLength="20" runat="server" PlaceHolder="Lot Size"></asp:TextBox>
        </div>
    </div>
    <div class="Free-Home">
        <div class="left_section_info">
            <b>House type</b>
            <div>
                <asp:RadioButtonList ID="rbHouseType" runat="server">
                    <asp:ListItem>Townhouse</asp:ListItem>
                    <asp:ListItem>Condominium</asp:ListItem>
                    <asp:ListItem>Semi Detached</asp:ListItem>
                    <asp:ListItem Selected>Detached</asp:ListItem>
                    <asp:ListItem>Link</asp:ListItem>
                    <asp:ListItem>Row House</asp:ListItem>
                </asp:RadioButtonList>
            </div>
        </div>
        <div class="left_section_info">
            <b>Garage</b>
            <div>
                <asp:RadioButtonList ID="rbGarage" runat="server">
                    <asp:ListItem Selected>Single</asp:ListItem>
                    <asp:ListItem>Double</asp:ListItem>
                    <asp:ListItem>Triple</asp:ListItem>
                    <asp:ListItem>No Garage</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:RadioButtonList>
            </div>
        </div>
        <div class="left_section_info">
            <b>Basement Development</b>
            <asp:CheckBoxList ID="chkBasement" runat="server">
                <asp:ListItem Selected>Full</asp:ListItem>
                <asp:ListItem>Part</asp:ListItem>
                <asp:ListItem>Finished</asp:ListItem>
                <asp:ListItem>None</asp:ListItem>
            </asp:CheckBoxList>
        </div>
    </div>
    <div class="Free-Home">
        <div class="left_section_info">
            <b>Approximate Age of Home</b>
            <div>
                <asp:RadioButtonList ID="rbHome" runat="server">
                    <asp:ListItem>1 to 5 years </asp:ListItem>
                    <asp:ListItem Selected>5 to 10 years</asp:ListItem>
                    <asp:ListItem>10 to 20 years</asp:ListItem>
                    <asp:ListItem>20 to 50 years</asp:ListItem>
                    <asp:ListItem>Over 50 years</asp:ListItem>
                </asp:RadioButtonList>
            </div>
        </div>
        <div class="left_section_info">
            <b>When Do You Plan To Move?</b>
            <div>
                <asp:RadioButtonList ID="rbMovePlan" runat="server">
                    <asp:ListItem>Immediately</asp:ListItem>
                    <asp:ListItem Selected>Three Months</asp:ListItem>
                    <asp:ListItem>Six Months</asp:ListItem>
                    <asp:ListItem>One Year</asp:ListItem>
                    <asp:ListItem>Three Years</asp:ListItem>
                    <asp:ListItem>Undecided</asp:ListItem>
                </asp:RadioButtonList>
            </div>
        </div>
    </div>
    <div class="Free-Home">
        <div>
            Additional Criteria and Information:
        </div>
        <asp:TextBox ID="txtAdditionalInfo" runat="server" TextMode="MultiLine" PlaceHolder="Additional Infomation"></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" ID="valInput" ControlToValidate="txtAdditionalInfo"
            ValidationExpression="^[\s\S]{0,100}$" ErrorMessage="Please enter a maximum of 200 characters"
            Display="Dynamic" ForeColor="Red" ></asp:RegularExpressionValidator>
    </div>
    <div class="Free-Home">
        <b >Contact Information:</b>
        <br />
        Please answer all fields in this section so that we can send you the information
        you have requested as soon as possible.
          <div class="Infomation">
              <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
              <asp:TextBox ID="txtFirstName" MaxLength="20" runat="server" PlaceHolder="First Name"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="FreeHome" runat="server" Display="Dynamic" ForeColor="Red" ControlToValidate="txtFirstName" ErrorMessage="FirstName required" SetFocusOnError="true"></asp:RequiredFieldValidator>

          </div>
        <div class="Infomation">
            <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox ID="txtLastName" MaxLength="20" runat="server" PlaceHolder="Last Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ValidationGroup="FreeHome" runat="server" Display="Dynamic" ForeColor="Red" ControlToValidate="txtLastName" ErrorMessage="LastName required" SetFocusOnError="true"></asp:RequiredFieldValidator>
        </div>
        <div class="Infomation">
            <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
            <asp:TextBox ID="txtPhone" runat="server" PlaceHolder="Phone"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ValidationGroup="FreeHome" Display="Dynamic" ForeColor="Red"  ControlToValidate="txtPhone" ErrorMessage="Phone No. required" SetFocusOnError="true"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="regPhone" ValidationGroup="DreamHome" runat="server" ControlToValidate="txtPhone" ForeColor="Red" 
                ValidationExpression="^(\(\d{3}\) \d{3}-\d{4}|\d{3}-\d{3}-\d{4}|\d{10})$"
                Text="Enter a valid phone number" />
        </div>
        <div class="Infomation">
            <asp:Label ID="lblEmail" runat="server" Text="E-mail"></asp:Label>
            <asp:TextBox ID="txtEmail" MaxLength="30" runat="server" PlaceHolder="E-mail"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ValidationGroup="FreeHome" Display="Dynamic" ForeColor="Red" ControlToValidate="txtEmail" ErrorMessage="EmailID required" SetFocusOnError="true"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rgeEmail" runat="server" ValidationGroup="FreeHome" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." />
        </div>
        <div class="Infomation">
            <asp:Label ID="lblStreet" runat="server" Text="Street Address"></asp:Label>
            <asp:TextBox ID="txtStreet" MaxLength="50" runat="server" PlaceHolder="Street Address"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="FreeHome" runat="server" Display="Dynamic" ForeColor="Red" ControlToValidate="txtStreet" ErrorMessage="Address required" SetFocusOnError="true"></asp:RequiredFieldValidator>
        </div>
        <div class="Infomation">
            <asp:Label ID="lblCity1" runat="server" Text="City"></asp:Label>
            <asp:TextBox ID="txtCity1" runat="server" MaxLength="10" PlaceHolder="City"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="FreeHome" runat="server" Display="Dynamic" ForeColor="Red" ControlToValidate="txtCity1" ErrorMessage="City required" SetFocusOnError="true"></asp:RequiredFieldValidator>
        </div>
        <div class="Infomation">
            <asp:Label ID="lblProvince1" runat="server" Text="Province"></asp:Label>
            <asp:TextBox ID="txtProvince1" MaxLength="10" runat="server" PlaceHolder="Province"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="FreeHome" runat="server" Display="Dynamic" ForeColor="Red" ControlToValidate="txtProvince1" ErrorMessage="Province required" SetFocusOnError="true"></asp:RequiredFieldValidator>
        </div>
        <div class="Infomation">
            <asp:Label ID="lblPostalCode" runat="server" Text="Postal Code"></asp:Label>
            <asp:TextBox ID="txtlblPostalCode" MaxLength="10" runat="server" PlaceHolder="Postal Code"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="FreeHome" runat="server" Display="Dynamic" ForeColor="Red" ControlToValidate="txtlblPostalCode" ErrorMessage="Postal Code required" SetFocusOnError="true"></asp:RequiredFieldValidator>
             <asp:CompareValidator ID="CompareValidator6" runat="server" ValidationGroup="DreamHome" ForeColor="Red" 
                Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtlblPostalCode" ErrorMessage="Value must be number" />
        </div>
        <div class="Infomation">
            <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
            <asp:TextBox ID="txtCountry" MaxLength="10" runat="server" PlaceHolder="Country"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ValidationGroup="FreeHome" runat="server" Display="Dynamic" ForeColor="Red" ControlToValidate="txtCountry" ErrorMessage="Country required" SetFocusOnError="true"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="Free-Home">
        <div class="Btn_Info">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="FreeHome"
                OnClick="btnSubmit_Click" />
        </div>
        <div class="Btn_Info">
            <asp:Button ID="btnReset" runat="server" Text="Reset"
                OnClick="btnReset_Click" />
        </div>
    </div>
    </div>
       </div>
</asp:Content>
