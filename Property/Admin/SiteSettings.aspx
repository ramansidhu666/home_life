﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SiteSettings.aspx.cs" Inherits="Property.Admin.SiteSettings" %>

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
                    <h3>Configuration</h3>
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
                            <label class="control-label" for="basicinput">Title</label>
                            <div class="controls">
                                <asp:TextBox ID="txtTitle" runat="server" MaxLength="50" PlaceHolder="Title here..." class="span8"></asp:TextBox>
                                <%--<span class="help-inline">Minimum 5 Characters</span>--%>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="basicinput">Description</label>
                            <div class="controls">
                                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" PlaceHolder="Description here..." class="span8"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="basicinput">Keywords</label>
                            <div class="controls">
                                <asp:TextBox ID="txtKeywords" runat="server" PlaceHolder="Keywords here..." class="span8 tip"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="basicinput">Copyright</label>
                            <div class="controls">
                                <div class="input-prepend">
                                    <span class="add-on">&copy;</span>
                                    <asp:TextBox ID="txtCopyright" runat="server" PlaceHolder="Copyright here..." class="span8"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="basicinput">Owner Phone Number</label>
                            <div class="controls">
                                <asp:TextBox ID="txtphone" runat="server" PlaceHolder="Owner Phone Number..." class="span8"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="basicinput">Owner Mobile Number</label>
                            <div class="controls">
                                <asp:TextBox ID="txtmobile" runat="server" PlaceHolder="Owner Mobile Number..." class="span8"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="basicinput">Owner Email</label>
                            <div class="controls">
                                <asp:TextBox ID="txtemail" runat="server" PlaceHolder="Owner Email..." class="span8"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="basicinput">Fax</label>
                            <div class="controls">
                                <asp:TextBox ID="txtfax" runat="server" PlaceHolder="Fax.." class="span8"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="basicinput">Favicon.ico</label>
                            <div class="controls">
                                <asp:FileUpload ID="UpdFavicon" runat="server" />
                                <asp:Image ID="imgfavicon" Width="32px" Height="32px" runat="server" Visible="false" />
                            </div>
                        </div>

                     <%--   <div class="control-group">
                            <label class="control-label" for="basicinput">Header Logo</label>
                            <div class="controls">
                                <asp:FileUpload ID="updbanner" runat="server" />
                                <asp:Image ID="Imgbanner" Width="200px" runat="server" Visible="false" />
                            </div>
                        </div>--%>

                        <div class="control-group">
                            <label class="control-label" for="basicinput">Footer Logo</label>
                            <div class="controls">
                                <asp:FileUpload ID="UpdLogo" runat="server" />
                                <asp:Image ID="imgLogo" Width="200px" runat="server" Visible="false" />
                            </div>
                        </div>

                        <div class="control-group" style="display: none;">
                            <label class="control-label" for="basicinput">Upload Banners</label>
                            <div class="controls">
                                <asp:FileUpload ID="FileUpload1" MaxLength="3" runat="server" class="multi" />
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                <asp:Image ID="Image1" Width="100px" Height="100px" runat="server" Visible="false" />
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="basicinput">Site Template</label>
                            <div class="controls">
                                <asp:TextBox ID="txtSiteTemplate" runat="server" PlaceHolder="Site Template.." class="span8"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="basicinput">Banner Settings</label>
                            <div class="controls">
                                <asp:TextBox ID="txtBanner" runat="server" PlaceHolder="Banner Settings..." class="span8"></asp:TextBox>
                            </div>
                        </div>

                        <%--    <div class="control-group">
                            <label class="control-label" for="basicinput">Dropdown Button</label>
                            <div class="controls">
                                <div class="dropdown">
                                    <a class="dropdown-toggle btn" data-toggle="dropdown" href="#">Dropdown Button <i class="icon-caret-down"></i></a>
                                    <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                                        <li><a href="#">First Row</a></li>
                                        <li><a href="#">Second Row</a></li>
                                        <li><a href="#">Third Row</a></li>
                                        <li><a href="#">Fourth Row</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                         <div class="control-group">
                            <label class="control-label" for="basicinput">Dropdown</label>
                            <div class="controls">
                                <select tabindex="1" data-placeholder="Select here.." class="span8">
                                    <option value="">Select here..</option>
                                    <option value="Category 1">First Row</option>
                                    <option value="Category 2">Second Row</option>
                                    <option value="Category 3">Third Row</option>
                                    <option value="Category 4">Fourth Row</option>
                                </select>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Radiobuttons</label>
                            <div class="controls">
                                <label class="radio">
                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
                                    Option one
                                </label>
                                <label class="radio">
                                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                    Option two
                                </label>
                                <label class="radio">
                                    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
                                    Option three
                                </label>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Inline Radiobuttons</label>
                            <div class="controls">
                                <label class="radio inline">
                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
                                    Option one
                                </label>
                                <label class="radio inline">
                                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                    Option two
                                </label>
                                <label class="radio inline">
                                    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
                                    Option three
                                </label>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Checkboxes</label>
                            <div class="controls">
                                <label class="checkbox">
                                    <input type="checkbox" value="">
                                    Option one
                                </label>
                                <label class="checkbox">
                                    <input type="checkbox" value="">
                                    Option two
                                </label>
                                <label class="checkbox">
                                    <input type="checkbox" value="">
                                    Option three
                                </label>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Inline Checkboxes</label>
                            <div class="controls">
                                <label class="checkbox inline">
                                    <input type="checkbox" value="">
                                    Option one
                                </label>
                                <label class="checkbox inline">
                                    <input type="checkbox" value="">
                                    Option two
                                </label>
                                <label class="checkbox inline">
                                    <input type="checkbox" value="">
                                    Option three
                                </label>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="basicinput">Textarea</label>
                            <div class="controls">
                                <textarea class="span8" rows="5"></textarea>
                            </div>
                        </div>--%>

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

