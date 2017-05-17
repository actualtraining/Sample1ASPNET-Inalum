﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MyTheme.Master" AutoEventWireup="true" CodeBehind="SampleSqlDataSource1.aspx.cs" Inherits="SampleMasterPage.SampleSqlDataSource1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">

    <link href="MyGridStyle.css" rel="stylesheet" />

    <div class="col-lg-12">
        <h1 class="page-header">Sample SQL Datasource</h1>

        <asp:SqlDataSource runat="server" ID="sdsKategori"
            ConnectionString="<%$ ConnectionStrings:InalumDbConnectionString %>"
            SelectCommand="SELECT [KategoriID], [NamaKategori] FROM [Kategori]"
            DeleteCommand="DELETE FROM [Kategori] WHERE [KategoriID] = @KategoriID"
            InsertCommand="INSERT INTO [Kategori] ([NamaKategori]) VALUES (@NamaKategori)"
            UpdateCommand="UPDATE [Kategori] SET [NamaKategori] = @NamaKategori WHERE [KategoriID] = @KategoriID">
            <DeleteParameters>
                <asp:Parameter Name="KategoriID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NamaKategori" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NamaKategori" Type="String" />
                <asp:Parameter Name="KategoriID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <div class="col-lg-4">
            <asp:DetailsView runat="server" ID="dvKategori" AutoGenerateRows="False" CssClass="table"
                DataKeyNames="KategoriID" DataSourceID="sdsKategori" DefaultMode="Insert">
                <Fields>
                    <asp:BoundField DataField="KategoriID" HeaderText="KategoriID" InsertVisible="False" ReadOnly="True" SortExpression="KategoriID" />
                    <asp:BoundField DataField="NamaKategori" HeaderText="Nama Kategori" SortExpression="NamaKategori" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
        </div>

        <div class="col-lg-8">
            <div class="form-inline">
                <div class="form-group">
                    <label for="email">Search Nama Kategori :</label>
                    <asp:TextBox runat="server" ID="txtSearch" CssClass="form-control" />
                </div>
                <asp:Button Text="Search" ID="btnSearch" CssClass="btn btn-primary btn-sm" runat="server" />
            </div><br />

            <asp:GridView runat="server" ID="gvKategori" AutoGenerateColumns="False"
                DataKeyNames="KategoriID" DataSourceID="sdsKategori" CssClass="table table-striped table-hover"
                AllowPaging="True" AllowSorting="True" PageSize="5">
                <Columns>
                    <asp:BoundField DataField="KategoriID" HeaderText="KategoriID" InsertVisible="False"
                        ReadOnly="True" SortExpression="KategoriID" />
                    <asp:BoundField DataField="NamaKategori" HeaderText="NamaKategori" SortExpression="NamaKategori" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
