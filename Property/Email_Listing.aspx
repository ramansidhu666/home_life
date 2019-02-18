<%@ Page Title="" Language="C#" MasterPageFile="~/PropertyNew.Master" ValidateRequest="false" AutoEventWireup="true"
    CodeBehind="Email_Listing.aspx.cs" Inherits="Property.Email_Listing" %>

<%--<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
        <link href="css/shortcodes.css" rel="stylesheet" />
    <link href="css/style_002.css" rel="stylesheet" />
    <link href="slider/css/style.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/styleBackup.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div id="Property" runat="server" class="email_head">
    </div>
    <div class="wrapper_new" style="margin-left: 160px;">
    <div class="Free-Home">
        <div class="Infomation">
            <asp:Label ID="lblFriendEmail" runat="server" Text="Friend's Email:"></asp:Label>
            <asp:TextBox ID="txtFriendEmail" runat="server" PlaceHolder=" Email"></asp:TextBox>
            <div class="Email_ErrorMessege">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is Required " ForeColor="Red"
                    ControlToValidate="txtFriendEmail" ValidationGroup="css"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="Red" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ControlToValidate="txtFriendEmail" ErrorMessage="Invalid email!" ValidationGroup="SaveContactInfo">  
                </asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="Infomation">
            <asp:Label ID="lblSubject" runat="server" Text="Subject:"></asp:Label>
            <asp:TextBox ID="txtSubject" runat="server" PlaceHolder="Subject"></asp:TextBox>
            <div class="Email_ErrorMessege">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat="server" ErrorMessage="Subject is Required"
                    ControlToValidate="txtSubject" ValidationGroup="css"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="Infomation">
            <asp:Label ID="lblComments" runat="server" Text="Comments: "></asp:Label>
            <asp:TextBox ID="txtComments" runat="server" TextMode="MultiLine" PlaceHolder="Comments"></asp:TextBox>
           <p style="margin :0px 0px 16px 117px;float:none;">   <asp:RegularExpressionValidator Display="Dynamic" ForeColor="Red" ControlToValidate="txtComments"
                ID="RegularExpressionValidator3" ValidationExpression="^[\s\S]{0,150}$" runat="server"
                ErrorMessage="Maximum 150 characters required."></asp:RegularExpressionValidator></p>

        </div> 
        <div class="Infomation_1">
        
            <asp:Label ID="lblFormSubmission" runat="server" Text="Form Submission: "></asp:Label>
            <p>
                Type the characters from the picture In the box below, type the characters that
                you see in the picture. This helps ensure that a person, not an automated program,
                is submitting the form
            </p>
        </div>
        <%-- <cc1:CaptchaControl ID="cptCaptcha" runat="server"

        CaptchaBackgroundNoise="Low" CaptchaLength="5"

        CaptchaHeight="60" CaptchaWidth="200"

        CaptchaLineNoise="None" CaptchaMinTimeout="5"

        CaptchaMaxTimeout="240" FontColor = "#529E00" />

    

    </div>--%>
        <div class="Infomation">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <div class="new_email_list">
                <asp:ScriptManager ID="SM1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UP1" runat="server">
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td class="Captcha">
                                    <asp:Label ID="imgCaptcha" runat="server" Text=""></asp:Label>
                                    <%--    <asp:Image ID="imgCaptcha" runat="server" />--%>
                                </td>
                                <td valign="middle">
                                    <asp:Button ID="btnRefresh" runat="server" Text="Refresh" OnClick="btnRefresh_Click" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
         
        <div class="Infomation">
           <asp:Label ID="Label2" runat="server" Text="Enter Captcha: "></asp:Label>
            <asp:TextBox ID="txtCaptcha" runat="server" class="email_text" PlaceHolder="Captcha"></asp:TextBox>
            <div class="Email_ErrorMessege">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ErrorMessage="*Required"
                    ControlToValidate="txtCaptcha" ValidationGroup="css"></asp:RequiredFieldValidator>

            </div>
            
        </div>
         <asp:Literal ID="literal" runat="server"></asp:Literal>
        <div class="btn_email">
         <p><asp:Label ID="lblErrorMessage" runat="server" Font-Names="Arial" Text=""></asp:Label></P>
            <asp:Button ID="btnVerify" runat="server" Text="Send Mail" OnClick="btnVerify_Click"
                ValidationGroup="css" />
        </div>
       
    </div>
        </div>
</asp:Content>
