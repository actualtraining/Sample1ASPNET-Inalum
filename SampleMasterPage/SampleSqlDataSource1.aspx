<%@ Page Title="" Language="C#" MasterPageFile="~/MyTheme.Master" AutoEventWireup="true" CodeBehind="SampleSqlDataSource1.aspx.cs" Inherits="SampleMasterPage.SampleSqlDataSource1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    
    <link href="MyGridStyle.css" rel="stylesheet" />

    <div class="col-lg-12">
        <h1 class="page-header">Sample SQL Datasource</h1>

        <asp:SqlDataSource runat="server" ID="sdsKategori"
            ConnectionString="<%$ ConnectionStrings:InalumDbConnectionString %>"
            SelectCommand="SELECT [KategoriID], [NamaKategori] FROM [Kategori]" />

        <div class="col-lg-6">
            <asp:GridView runat="server" ID="gvKategori" AutoGenerateColumns="False"
                DataKeyNames="KategoriID" DataSourceID="sdsKategori" CssClass="table table-striped table-hover" 
                AllowPaging="True" AllowSorting="True" PageSize="5">
                <Columns>
                    <asp:BoundField DataField="KategoriID" HeaderText="KategoriID" InsertVisible="False"
                        ReadOnly="True" SortExpression="KategoriID" />
                    <asp:BoundField DataField="NamaKategori" HeaderText="NamaKategori" SortExpression="NamaKategori" >
                    <HeaderStyle CssClass="myThStyle" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
        </div>
        <div class="col-lg-6">

        </div>
    </div>
</asp:Content>
