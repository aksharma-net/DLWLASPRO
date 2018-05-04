﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShopMaster.aspx.cs" Inherits="DLWLASPRO.ShopMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-xs-12 col-sm-9 content">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a><i class="glyphicon glyphicon-list-alt"></i> Shop Master</h3>
            </div>
            <div class="panel-body">
                <div class="content-row">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <b>Create Form</b>
                            </div>
                            <div class="panel-options">
                                <a class="bg" data-target="#sample-modal-dialog-1" data-toggle="modal" href="#sample-modal"><i class="entypo-cog"></i></a>
                                <a data-rel="collapse" href="#"><i class="entypo-down-open"></i></a>
                                <a data-rel="close" href="#!/tasks" ui-sref="Tasks"><i class="entypo-cancel"></i></a>
                            </div>
                        </div>

                        <div class="panel-body">
                            <form role="form">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Shop Name</label>
                                    <input type="text" class="form-control" id="txtShopName" runat="server" placeholder="Enter Shop Name">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Shop Number</label>
                                    <input type="text" class="form-control" id="txtShopNo" runat="server" placeholder="Shop Code" />
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Short Name</label>
                                    <input type="text" class="form-control" id="txtShortname" runat="server" placeholder="Short Name" />
                                </div>

                                <button type="submit" class="btn btn-info" runat="server" onserverclick="btnSubmit_ServerClick" id="btnSubmit">Save</button>
                                <br />
                                <asp:Label ID="txtalert" runat="server"></asp:Label>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div class="content-row">
                    <div class="panel panel-default">
                        <asp:GridView ID="grdShopMaster" CssClass="table table-hover" runat="server" OnRowEditing="grdShopMaster_RowEditing" AutoGenerateColumns="false">
                            <Columns>
                                <asp:TemplateField HeaderText="Srno" HeaderStyle-CssClass="text-center">
                                    <ItemTemplate>
                                        <%#Container.DataItemIndex+1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField HeaderText="Shop_Name" DataField="Name" HeaderStyle-CssClass="text-center" />
                                <asp:BoundField HeaderText="Shop_Number" DataField="ShopNo" HeaderStyle-CssClass="text-center" />
                                <asp:BoundField HeaderText="Short Name" DataField="ShortName" HeaderStyle-CssClass="text-center" />
                                <asp:TemplateField HeaderText="Deactive" HeaderStyle-CssClass="text-center">
                                    <ItemTemplate>
                                        <%--<asp:HiddenField ID="hfcode" runat="server"  Value='<%# Bind("Code") %>'  />--%>
                                        <asp:HiddenField runat="server" ID="Code" Value='<%# Eval("Code")%>' />
                                        <asp:CheckBox ID="chkDeactive" runat="server" Checked='<%#Convert.ToBoolean(Eval("IsDeactive"))%>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Control System" HeaderStyle-CssClass="text-center">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" Text="Update/Delete" runat="server" CommandName="Edit" />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:LinkButton ID="LinkButton2" Text="Update" OnClick="OnUpdate" runat="server" CssClass="btn btn-success" />
                                        <asp:LinkButton ID="LinkButton3" Text="Cancel" OnClick="OnCancel" runat="server" CssClass="btn btn-danger " />
                                        <asp:LinkButton ID="LinkButton4" Text="Delete" OnClick="OnDelete" runat="server" CssClass="btn btn-danger " />
                                    </EditItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- content -->
</asp:Content>
