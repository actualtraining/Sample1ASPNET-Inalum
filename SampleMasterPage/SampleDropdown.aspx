<%@ Page Title="Sample DropDown" Language="C#" MasterPageFile="~/MyTheme.Master" AutoEventWireup="true" CodeBehind="SampleDropdown.aspx.cs" Inherits="SampleMasterPage.SampleDropdown" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="col-lg-12">
        <h1 class="page-header">Sample Dropdown</h1>
        <br />

        <div class="col-lg-6">
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Sport :</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddSport" CssClass="form-control" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Culinary :</label>
                    <div class="col-sm-10">
                        <asp:DropDownList runat="server" ID="ddCulinary" CssClass="form-control">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Nama :</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtNama" CssClass="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button Text="Submit" ID="btnSubmit" CssClass="btn btn-success"
                            runat="server" OnClick="btnSubmit_Click" />
                    </div>
                </div>
            </div>

            <hr />

            <asp:Label ID="lblKeterangan" runat="server" />
        </div>

       
    </div>
</asp:Content>
