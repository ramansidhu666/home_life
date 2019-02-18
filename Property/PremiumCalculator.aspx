<%@ Page Title="" Language="C#" MasterPageFile="~/PropertyNew.Master" AutoEventWireup="true"
    CodeBehind="PremiumCalculator.aspx.cs" Inherits="Property.PremiumCalculator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin: 43px 36px 27px 0px;text-align: center;">
        <link rel="stylesheet" href="http://www.cmhc.ca/style/calculators/externalStyles.css" />
        <iframe frameborder="0" scrolling="no" id="premiumCalculatorIframe" class="en" name="premiumCalculatorIframe"
            src="http://www.cmhc.ca/sharing/calculators/premiumCalculator/index.cfm?lang=en">
        </iframe>
        <script type="text/javascript" src="http://www.cmhc.ca/js/jquery-cmhc.js"></script>
        <script type="text/javascript" src="http://www.cmhc.ca/js/jquery/iframe-resizer/js/iframeResizer.min.js"></script>
        <script type="text/javascript">            $('iframe').iFrameResize();</script>
    </div>
</asp:Content>
