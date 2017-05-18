<%@ Page Title="Login Form" Language="C#" MasterPageFile="~/MyTheme.Master" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="SampleMasterPage.LoginForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="col-lg-12">
        <h1 class="page-header">Login Form</h1>


        <div class="col-lg-6">
            <div>
                <div class="form-group">
                    <label for="txtUsername">Username:</label>
                    <asp:TextBox runat="server" ID="txtUsername" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="txtPassword">Password:</label>
                    <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" TextMode="Password" />
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox">
                        Remember me</label>
                </div>
                <asp:Button Text="Login" ID="btnLogin" CssClass="btn btn-success" runat="server" />
            </div>
        </div>

    </div>

</asp:Content>
