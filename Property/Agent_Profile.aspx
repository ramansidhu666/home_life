<%@ Page Title="" Language="C#" MasterPageFile="~/PropertyNew.Master" AutoEventWireup="true" CodeBehind="Agent_Profile.aspx.cs" Inherits="Property.Agent_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
   

    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>

<script >
    $(document).ready(function () {
        initialize();
        var geocoder;
        var map;
    });
    function initialize() {
        geocoder = new google.maps.Geocoder();
        var latlng = new google.maps.LatLng(43.747371, -79.714026);
        var mapOptions = {
            zoom: 15,
            center: latlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
        codeAddress();
    }
    function codeAddress() {
        var address = document.getElementById('<%=address.ClientID%>').value;
        geocoder.geocode({ 'address': address }, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                map.setCenter(results[0].geometry.location);
                var marker = new google.maps.Marker({
                    map: map,
                    position: results[0].geometry.location
                });
                var contentString = address;
                var infowindow = new google.maps.InfoWindow({
                    content: contentString
                });
                google.maps.event.trigger(map, "resize");//if map not display correct
                google.maps.event.addListener(marker, 'click', function () {
                    infowindow.open(map, marker); //infowindow add in map
                    google.maps.event.addDomListener(window, 'load', initialize);
                });
                infowindow.open(map, marker);
            } else {
                alert('Geocode was not successful for the following reason: ' + status);
            }
        });
    }
</script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
    <div class="wrapper_new">
        <div class="Free-Home_new">
            <div class="wrapper_new">
                <div class="property-search-container">
                    <div class="dt-sc-tabs-container" style="width: 100%;">
                        
                           <div class="anchor_btn"> 
                               <a class="btn btn-primary" href="AgentProperties.aspx">View My Properties</a>
                              <a href="Contact_Agent.aspx" class="btn btn-primary" >Email Me</a>
                             <a target="_blank" id="gg" runat="server" class="btn btn-primary" href="#">Visit My Site</a>
                   </div>
                          
                        <div style="display: block;" class="dt-sc-tabs-frame-content">
                            <div class="Free-Home_new">
                                <div class="col-md-12 col-sm-12">
                                    <div class="col-md-3 col-sm-3">
                               <asp:Repeater ID="grdBanfdsfsnerShow" runat="server">
                                <HeaderTemplate>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <div class="test_bg_Filename">
                                        <div class="name">
                                            <img src='/admin/uploadfiles/<%#Eval("FileName") %>' alt="" />
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                                    </div>
                                    <div class="col-md-9 col-sm-9">
                                        <div id="map-canvas" style="height: 180px; width: 607px; margin: 9px -9px 12px;">
                                        </div>
                                        <div>
                                            <asp:HiddenField ID="address" runat="server" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12">
                                    <div class="agent_bio">
                                        <p><asp:Label class="info_apd2" ID="lblAbout" runat="server"></asp:Label></p>
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12">
                                    <div class="col-md-3 col-sm-3">
                                        <div class="details">
                                            <h4>Company</h4>
                                            <p>
                                                <asp:Label class="info_apd" ID="lblcompany" runat="server"></asp:Label>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-3">
                                        <div class="details">
                                            <h4>Location</h4>
                                            <p class="location_p">
                                                <asp:Label  ID="lbladdress" runat="server"></asp:Label>&nbsp<br />
                                                <asp:Label  ID="lblcity" runat="server"></asp:Label><br />
                                            </p>
                                            <p class="location_p1">
                                                <%--<asp:Label class="info_apd2" ID="lblcountry" runat="server"></asp:Label>--%>
                                                <asp:Label class="info_apd2" ID="lblstate" runat="server"></asp:Label>
                                                <asp:Label class="info_apd2" ID="lblpostal" runat="server"></asp:Label>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-3">
                                        <div class="details">

                                            <h4>Contact Info</h4>
                                            <p>
                                                <asp:Label class="info_apd" ID="lblphone" runat="server"></asp:Label>
                                               &nbsp<br />
                                                <asp:Label class="info_apd" ID="lblfax" runat="server"></asp:Label>
                                            </p>

                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-3">
                                        <div class="details">
                                            <h4>Other</h4>
                                            <p><span class="title_apd">Languages Spoken: </span><span class="info_apd"> <asp:Label class="info_apd" ID="lblLanguage" runat="server"></asp:Label></span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </div>
</asp:Content>
