<%@ Page Title="Sample DropDown" Language="C#" MasterPageFile="~/MyTheme.Master" AutoEventWireup="true" CodeBehind="SampleDropdown.aspx.cs" Inherits="SampleMasterPage.SampleDropdown" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="col-lg-12">
        <h1 class="page-header">Sample Dropdown</h1>
        <br />

        <asp:DropDownList ID="ddSport" runat="server">
        </asp:DropDownList>
    </div>
</asp:Content>
