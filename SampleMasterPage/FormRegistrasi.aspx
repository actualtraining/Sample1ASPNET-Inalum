﻿<%@ Page Title="Form Registrasi" Language="C#" MasterPageFile="~/MyTheme.Master" AutoEventWireup="true" CodeBehind="FormRegistrasi.aspx.cs" Inherits="SampleMasterPage.FormRegistrasi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="col-lg-12">
        <h1 class="page-header">Sample SQL Datasource</h1>

        <asp:Literal ID="ltKeterangan" EnableViewState="false" runat="server" /><br />
        <hr />
        <div class="col-lg-6">
            <asp:SqlDataSource runat="server" ID="sdsRegistrasi" 
                ConnectionString="<%$ ConnectionStrings:InalumDbConnectionString %>" 
                InsertCommand="insert into Pengguna(Username,Password,Aturan) 
                values(@Username,CONVERT(varchar(32),HASHBYTES('md5',@Password),2),@Aturan)">
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtUsername" Name="Username" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtPassword" Name="Password" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtAturan" Name="Aturan" PropertyName="Text" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>

            <div>
                <div class="form-group">
                    <label for="txtUsername">Username :</label>
                    <asp:TextBox runat="server" ID="txtUsername" CssClass="form-control" />
                    <asp:RequiredFieldValidator ErrorMessage="Username required" 
                        ControlToValidate="txtUsername" runat="server" />
                </div>
                <div class="form-group">
                    <label for="txtPassword">Password :</label>
                    <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="txtRepass">Repassword :</label>
                    <asp:TextBox runat="server" ID="txtRepass" CssClass="form-control" TextMode="Password" />
                    <asp:CompareValidator ErrorMessage="Password dan repassword tidak sama" 
                        ControlToValidate="txtRepass" ControlToCompare="txtPassword" runat="server" />
                </div>
                 <div class="form-group">
                    <label for="txtAturan">Aturan :</label>
                    <asp:TextBox runat="server" ID="txtAturan" CssClass="form-control" />
                     <asp:RequiredFieldValidator ErrorMessage="Aturan harus diisi" 
                         ControlToValidate="txtAturan" runat="server" />
                </div>
                <asp:Button Text="Register" ID="btnRegister" CssClass="btn btn-primary"
                   OnClick="btnRegister_Click" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>
