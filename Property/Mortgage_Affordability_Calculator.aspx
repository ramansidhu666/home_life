﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PropertyNew.Master" AutoEventWireup="true"
    CodeBehind="Mortgage_Affordability_Calculator.aspx.cs" Inherits="Property.Mortgage_Affordability_Calculator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin: 43px 36px 27px 0px;text-align: center;">
        <link rel="stylesheet" href="http://www.cmhc.ca/style/calculators/externalStyles.css" />
        <iframe frameborder="0" scrolling="no" id="mortgageAffordabilityIframe" class="en"
            name="mortgageAffordabilityIframe" src="http://www.cmhc.ca/sharing/calculators/mortgageAffordability/index.cfm?lang=en">
        </iframe>
        <script type="text/javascript" src="http://www.cmhc.ca/js/jquery-cmhc.js"></script>
        <script type="text/javascript" src="http://www.cmhc.ca/js/jquery/iframe-resizer/js/iframeResizer.min.js"></script>
        <script type="text/javascript">            $('iframe').iFrameResize();</script>
    </div>
</asp:Content>
