<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Agents.aspx.cs" Inherits="Property.Admin.Agents" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <ajaxtoolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </ajaxtoolkit:ToolkitScriptManager>

    <div class="span9">
        <div class="content">
            <div class="module">
                <div class="module-head">
                    <h3>Agents</h3>
                </div>
                <div class="module-body">

                    <%--  <div class="alert">
                        <button type="button" class="close" data-dismiss="alert">×</button>
                        <strong>Warning!</strong> Something fishy here!
                    </div>--%>
                    <%--  <div class="alert alert-error">
                        <button type="button" class="close" data-dismiss="alert">×</button>
                        <strong>Error !</strong> <asp:Label ID="lblerror" runat="server"></asp:Label> 
                    </div>--%>
                    <%--<div class="alert alert-success">
                        <button type="button" class="close" data-dismiss="alert">×</button>
                        <strong>Well done!</strong> Now you are listening me :) 
                    </div>--%>

                    <br />

                    <div class="form-horizontal row-fluid">


                        <div class="control-group">
                            <label class="control-label" for="basicinput">First Name</label>
                            <div class="controls">
                                <asp:TextBox ID="txtFirstname" runat="server" MaxLength="50" PlaceHolder="First Name..." class="span8"></asp:TextBox>
                                <%--<span class="help-inline">Minimum 5 Characters</span>--%>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="basicinput">Last Name</label>
                            <div class="controls">
                                <asp:TextBox ID="txtLastName" runat="server" PlaceHolder="Last Name..." class="span8"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="basicinput">Image</label>
                            <div class="controls">
                                <asp:FileUpload ID="updBannerImage" runat="server" />
                                <span class="help-inline">
                                    <asp:Image ID="imgbanner" Width="130px" runat="server" Visible="false" /></span>
                                <asp:HiddenField ID="hdnImg" runat="server" />
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="basicinput">Email</label>
                            <div class="controls">
                                <asp:TextBox ID="txtEamil" runat="server" PlaceHolder="Email..." class="span8 tip"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="basicinput">Address</label>
                            <div class="controls">
                                <asp:TextBox ID="txtAddress" runat="server" PlaceHolder="Address..." class="span8"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="basicinput">City</label>
                            <div class="controls">
                                <asp:TextBox ID="txtCity" runat="server" PlaceHolder="City..." class="span8"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="basicinput">State</label>
                            <div class="controls">
                                <asp:TextBox ID="txtState" runat="server" PlaceHolder="State.." class="span8"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="basicinput">Country</label>
                            <div class="controls">
                                <asp:TextBox ID="txtCountry" runat="server" Text="Canada" ReadOnly="true" class="span8"></asp:TextBox>

                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="basicinput">Postal Code</label>
                            <div class="controls">
                                <asp:TextBox ID="txtpostal" runat="server" PlaceHolder="Postal Code.." class="span8"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="basicinput">PhoneNumber</label>
                            <div class="controls">
                                <asp:TextBox ID="txtPhoneNumber" runat="server" PlaceHolder="PhoneNumber..." class="span8"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="basicinput">Fax</label>
                            <div class="controls">
                                <asp:TextBox ID="txtfax" runat="server" PlaceHolder="Fax.." class="span8"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="basicinput">About Me</label>
                            <div class="controls">
                                <asp:TextBox ID="txtAbout" runat="server" TextMode="MultiLine" PlaceHolder="About Me.." class="span8"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="basicinput">Language Spoken</label>
                            <div class="controls">
                                <asp:DropDownList ID="ddlLanguage" runat="server">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>Mandarin	
                                    </asp:ListItem>
                                    <asp:ListItem>Spanish
                                    </asp:ListItem>
                                    <asp:ListItem>English
                                    </asp:ListItem>
                                    <asp:ListItem>Hindi
                                    </asp:ListItem>
                                    <asp:ListItem>Arabic
                                    </asp:ListItem>
                                    <asp:ListItem>Portuguese
                                    </asp:ListItem>
                                    <asp:ListItem>Bengali
                                    </asp:ListItem>
                                    <asp:ListItem>Russian
                                    </asp:ListItem>
                                    <asp:ListItem>Japanese
                                    </asp:ListItem>
                                    <asp:ListItem>Punjabi
                                    </asp:ListItem>
                                    <asp:ListItem>German
                                    </asp:ListItem>
                                    <asp:ListItem>Javanese
                                    </asp:ListItem>
                                    <asp:ListItem>Wu (Shanghainese)
                                    </asp:ListItem>
                                    <asp:ListItem>Malay/Indonesian
                                    </asp:ListItem>
                                    <asp:ListItem>Telugu
                                    </asp:ListItem>
                                    <asp:ListItem>Vietnamese
                                    </asp:ListItem>
                                    <asp:ListItem>Korean
                                    </asp:ListItem>
                                    <asp:ListItem>French
                                    </asp:ListItem>
                                    <asp:ListItem>Marathi
                                    </asp:ListItem>
                                    <asp:ListItem>Tamil
                                    </asp:ListItem>
                                    <asp:ListItem>Urdu
                                    </asp:ListItem>
                                    <asp:ListItem>Turkish
                                    </asp:ListItem>
                                    <asp:ListItem>Italian
                                    </asp:ListItem>
                                    <asp:ListItem>Yue (Cantonese)
                                    </asp:ListItem>
                                    <asp:ListItem>Thai
                                    </asp:ListItem>
                                    <asp:ListItem>Gujarati
                                    </asp:ListItem>
                                    <asp:ListItem>Jin
                                    </asp:ListItem>
                                    <asp:ListItem>Southern Min
                                    </asp:ListItem>
                                    <asp:ListItem>Persian
                                    </asp:ListItem>
                                    <asp:ListItem>Polish
                                    </asp:ListItem>
                                    <asp:ListItem>Pashto
                                    </asp:ListItem>
                                    <asp:ListItem>Kannada
                                    </asp:ListItem>
                                    <asp:ListItem>Xiang (Hunnanese)
                                    </asp:ListItem>
                                    <asp:ListItem>Malayalam
                                    </asp:ListItem>
                                    <asp:ListItem>Sundanese
                                    </asp:ListItem>
                                    <asp:ListItem>Hausa
                                    </asp:ListItem>
                                    <asp:ListItem>Odia (Oriya)
                                    </asp:ListItem>
                                    <asp:ListItem>Burmese
                                    </asp:ListItem>
                                    <asp:ListItem>Hakka
                                    </asp:ListItem>
                                    <asp:ListItem>Ukrainian
                                    </asp:ListItem>
                                    <asp:ListItem>Bhojpuri
                                    </asp:ListItem>
                                    <asp:ListItem>Tagalog
                                    </asp:ListItem>
                                    <asp:ListItem>Yoruba
                                    </asp:ListItem>
                                    <asp:ListItem>Maithili
                                    </asp:ListItem>
                                    <asp:ListItem>Uzbek
                                    </asp:ListItem>
                                    <asp:ListItem>Sindhi
                                    </asp:ListItem>
                                    <asp:ListItem>Amharic
                                    </asp:ListItem>
                                    <asp:ListItem>Fula
                                    </asp:ListItem>
                                    <asp:ListItem>Romanian
                                    </asp:ListItem>
                                    <asp:ListItem>Oromo
                                    </asp:ListItem>
                                    <asp:ListItem>Igbo
                                    </asp:ListItem>
                                    <asp:ListItem>Azerbaijani
                                    </asp:ListItem>
                                    <asp:ListItem>Awadhi
                                    </asp:ListItem>
                                    <asp:ListItem>Gan Chinese
                                    </asp:ListItem>
                                    <asp:ListItem>Cebuano (Visayan)
                                    </asp:ListItem>
                                    <asp:ListItem>Dutch
                                    </asp:ListItem>
                                    <asp:ListItem>Kurdish
                                    </asp:ListItem>
                                    <asp:ListItem>Serbo-Croatian
                                    </asp:ListItem>
                                    <asp:ListItem>Malagasy
                                    </asp:ListItem>
                                    <asp:ListItem>Saraiki
                                    </asp:ListItem>
                                    <asp:ListItem>Nepali
                                    </asp:ListItem>
                                    <asp:ListItem>Sinhalese
                                    </asp:ListItem>
                                    <asp:ListItem>Chittagonian
                                    </asp:ListItem>
                                    <asp:ListItem>Zhuang
                                    </asp:ListItem>
                                    <asp:ListItem>Khmer
                                    </asp:ListItem>
                                    <asp:ListItem>Turkmen
                                    </asp:ListItem>
                                    <asp:ListItem>Assamese
                                    </asp:ListItem>
                                    <asp:ListItem>Madurese
                                    </asp:ListItem>
                                    <asp:ListItem>Somali
                                    </asp:ListItem>
                                    <asp:ListItem>Marwari
                                    </asp:ListItem>
                                    <asp:ListItem>Magahi
                                    </asp:ListItem>
                                    <asp:ListItem>Haryanvi
                                    </asp:ListItem>
                                    <asp:ListItem>Hungarian
                                    </asp:ListItem>
                                    <asp:ListItem>Chhattisgarhi
                                    </asp:ListItem>
                                    <asp:ListItem>Greek
                                    </asp:ListItem>
                                    <asp:ListItem>Chewa
                                    </asp:ListItem>
                                    <asp:ListItem>Deccan
                                    </asp:ListItem>
                                    <asp:ListItem>Akan
                                    </asp:ListItem>
                                    <asp:ListItem>Kazakh
                                    </asp:ListItem>
                                    <asp:ListItem>Northern Min
                                    </asp:ListItem>
                                    <asp:ListItem>Sylheti
                                    </asp:ListItem>
                                    <asp:ListItem>Zulu
                                    </asp:ListItem>
                                    <asp:ListItem>Czech
                                    </asp:ListItem>
                                    <asp:ListItem>Kinyarwanda
                                    </asp:ListItem>
                                    <asp:ListItem>Dhundhari
                                    </asp:ListItem>
                                    <asp:ListItem>Haitian Creole
                                    </asp:ListItem>
                                    <asp:ListItem>Eastern Min
                                    </asp:ListItem>
                                    <asp:ListItem>Ilocano
                                    </asp:ListItem>
                                    <asp:ListItem>Quechua
                                    </asp:ListItem>
                                    <asp:ListItem>Kirundi
                                    </asp:ListItem>
                                    <asp:ListItem>Swedish
                                    </asp:ListItem>
                                    <asp:ListItem>Hmong
                                    </asp:ListItem>
                                    <asp:ListItem>Shona
                                    </asp:ListItem>
                                    <asp:ListItem>Uyghur
                                    </asp:ListItem>
                                    <asp:ListItem>Hiligaynon
                                    </asp:ListItem>
                                    <asp:ListItem>Mossi
                                    </asp:ListItem>
                                    <asp:ListItem>Xhosa
                                    </asp:ListItem>
                                    <asp:ListItem>Belarusian
                                    </asp:ListItem>
                                    <asp:ListItem>Balochi
                                    </asp:ListItem>
                                    <asp:ListItem>Konkani</asp:ListItem>




                                </asp:DropDownList>
                            </div>
                        </div>
                         <div class="control-group">
                            <label class="control-label" for="basicinput">Designation</label>
                            <div class="controls">
                                <asp:TextBox ID="txtDesignation" runat="server" PlaceHolder="Designation.." class="span8"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="basicinput">Company</label>
                            <div class="controls">
                                <asp:TextBox ID="txtcompany" runat="server" PlaceHolder="Company.." class="span8"></asp:TextBox>
                            </div>
                        </div>
                        
                        <div class="control-group">
                            <label class="control-label" for="basicinput">Site Url</label>
                            <div class="controls">
                                <asp:TextBox ID="txtSiteUrl" runat="server" PlaceHolder="Site Url.." class="span8"></asp:TextBox>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <asp:Button ID="btnSave" runat="server" Text="Save" class="btn btn-primary" OnClick="btnSave_Click" />
                                <asp:Button ID="btnBack" class="btn" runat="server" Visible="false" Text="Back" OnClick="btnBack_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>



        </div>
        <!--/.content-->
    </div>
    <!--/.span9-->
</asp:Content>
