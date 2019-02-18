﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PropertyNew.Master" AutoEventWireup="true"
    CodeBehind="Calculator.aspx.cs" Inherits="Property.Calculator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">        var DPInstHelp = { "Channel": "27072014", "FunnelId": "4b556e50-f097-4056-b844-84771fe53822", "InstallDateHuman": "04/08/2014 11:19:46", "InstallDateMachine": "20140804111946", "InstGrp": "lnk_run1_ironpm_27072014_1.0.1.1", "Partner": "ironpm", "VersionInt": "1.0.1.1" };</script>
    <script type="text/javascript" src="js/javascript.js"></script>
    <script type="text/javascript" src="js/clickbinder.do"></script>
    <script src="js/clickbinder.do" type="text/javascript"></script>
    <script src="js/getSnoozing.do" type="text/javascript"></script>
    <script src="js/getJsonAds" type="text/javascript"></script>
    <script type="text/javascript" src="js/-1719400151.js"></script>
    
     <link href="css/style.css" rel="stylesheet" />
    <link href="css/styleBackup.css" rel="stylesheet" />
    <link href="css/style_002.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  
    <script type="text/javascript">
        function sortByPrice(a, b) {
            return a['priceFrom'] - b['priceFrom'];
        }

        function calculateTax(barriers, price) {
            var calculatedTax = 0;
            barriers.sort(sortByPrice);
            var start = barriers.indexOf(price) + 1;
            barriers.splice(start, barriers.length - start);

            var prevMoney = 0;
            for (var i = 1; i < barriers.length; i++) {
                calculatedTax += (barriers[i]['priceFrom'] - prevMoney) * barriers[i - 1]['percentage'];
                prevMoney = barriers[i]['priceFrom'];
            }
            return calculatedTax;
        }

        Array.prototype.indexOf = function (v) // only for arrays like barriers
        {
            for (var i = 0; i < this.length && this[i]['priceFrom'] !== v; i++);
            return i;
        }

        function calculate() {
            // initializing variables
            var price = document.getElementById('price');
            var firstTime = document.getElementById('firstTime');
            var Toronto = document.getElementById('Toronto');
            var tax = document.getElementById('tax');
            var calculatedTax = 0;
            // initializing variables

            var barriers = [{ 'priceFrom': 0, 'percentage': 0.005 }, { 'priceFrom': 55000, 'percentage': 0.01 }, { 'priceFrom': 250000, 'percentage': 0.015 }, { 'priceFrom': 400000, 'percentage': 0.02 }, { 'priceFrom': price.value, 'percentage': 0}];
            calculatedTax += calculateTax(barriers, price.value);
            if (firstTime.checked) {
                if (calculatedTax > 2000) {
                    calculatedTax -= 2000;
                } else calculatedTax = 0;
            }

            if (Toronto.checked) {
                if (!firstTime.checked || price.value > 400000) {
                    var barriers = [{ 'priceFrom': 0, 'percentage': 0.005 }, { 'priceFrom': 55000, 'percentage': 0.01 }, { 'priceFrom': 400000, 'percentage': 0.02 }, { 'priceFrom': price.value, 'percentage': 0}];
                    calculatedTax += calculateTax(barriers, price.value);

                    if (firstTime.checked && price.value > 400000) {
                        var barriers = [{ 'priceFrom': 0, 'percentage': 0.005 }, { 'priceFrom': 55000, 'percentage': 0.01 }, { 'priceFrom': 400000, 'percentage': 0.02}];
                        calculatedTax -= calculateTax(barriers, 400000);
                    }
                }
            }

            tax.innerHTML = Math.round(calculatedTax);
        }
    </script>
    <div style="padding-left:215px">
    <div class="Free-Home">
    <div id="landCalcBox">
        <h1 class="vheader">
            Land Transfer Tax</h1>
        <div id="calculatorForm">
            <h3 id="headerCalc">
                Calculator</h3>
            <form id="taxcalculator" action="#" method="post">
            <div id="purchasePrice">
                Enter Purchase Price: $
                <input size="15" style="width:267px;" name="price" id="price" value="" onchange="javascript:calculate();"
                    onkeyup="javascript:calculate();" type="text" />
            </div>
            <div id="checkBox">
                <p>
                    <input id="firstTime" name="firstTime" onchange="javascript:calculate();" onclick="javascript: calculate();"
                        type="checkbox">I am a first time home buyer</p>
                <p>
                    <input id="Toronto" name="Toronto" onchange="javascript:calculate();" onclick="javascript: calculate();"
                        type="checkbox">I am purchasing a property located in Toronto</p>
            </div>
            <p>
                <!--END CHECKBOX-->
            </p>
            <div id="resultBox">
                <div id="landTransfer">
                    Total Land Transfer Tax: $&nbsp;</div>
                <div id="tax">
                </div>
                <div style="clear: both;">
                </div>
            </div>
            </form>
        </div>
        <p>
            <!--END CALCULATOR FORM-->
        </p>
        <div id="taxDetails">
            <div id="ontarioTax">
                <h3>
                    Ontario Land Transfer Tax</h3>
                <p>
                    0.5% - first $55,000</p>
                <p>
                    1.0% - between $55,000 - $250,000</p>
                <p>
                    1.5% - over $250,000</p>
                <p>
                    2.0% - over $400,000</p>
                <div class="desc">
                    <i>Qualifying first time home buyers receive a $2000 credit</i></div>
            </div>
            <p>
                <!--END ONTARIO TAX-->
            </p>
            <div id="torontoTax">
                <h3>
                    Toronto Land Transfer Tax</h3>
                <p>
                    &nbsp;</p>
                <p>
                    0.5% - first $55,000</p>
                <p>
                    1.0% - between $55,000 - $400,000</p>
                <p>
                    2.0% - over $400,000</p>
                <div class="desc">
                    <i>First time buyers are exempt on the first $400,000</i></div>
            </div>
        </div>
    </div>
    </div>

    </div>
</asp:Content>
