<%@ Page Title="Sample Parameter" Language="C#" MasterPageFile="~/MyTheme.Master" AutoEventWireup="true" CodeBehind="SampleSqlParameter.aspx.cs" Inherits="SampleMasterPage.SampleSqlParameter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="col-lg-12">
        <h1 class="page-header">Sample SQL Datasource</h1>

        <div class="col-lg-6">
            <label for="txtSearch">Masukan Nama :</label>
            <asp:TextBox runat="server" ID="txtSearch" />
            <asp:Button Text="Search" ID="btnSearch" runat="server" />
            <br />

            <asp:SqlDataSource runat="server" ID="sdsKategori"
                ConnectionString="<%$ ConnectionStrings:InalumDbConnectionString %>"
                SelectCommand="SELECT [KategoriID], [NamaKategori] FROM [Kategori] 
                WHERE ([NamaKategori] LIKE '%' + @NamaKategori + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtSearch" Name="NamaKategori" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:GridView runat="server" ID="gvKategori" class="table table-striped"
                AutoGenerateColumns="False" DataKeyNames="KategoriID" DataSourceID="sdsKategori">
                <Columns>
                    <asp:BoundField DataField="KategoriID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="KategoriID" />
                    <asp:BoundField DataField="NamaKategori" HeaderText="Nama" SortExpression="NamaKategori" />
                </Columns>
                <EmptyDataTemplate>
                    Data yang anda cari tidak ditemukan...
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
        <div class="col-lg-6 pre-scrollable">
            <asp:SqlDataSource runat="server" ID="sdsBuku" 
                ConnectionString="<%$ ConnectionStrings:InalumDbConnectionString %>" 
                SelectCommand="SELECT [KodeBuku], [Judul], [Deskripsi], [Pengarang], [TahunTerbit], [Harga], [ISBN], [Penerbit] FROM [Buku] WHERE ([Judul] LIKE '%' + @Judul + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtSearchJudul" Name="Judul" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            <label for="txtSearch">Masukan Judul :</label>
            <asp:TextBox runat="server" ID="txtSearchJudul" CssClass="form-control" />
            <asp:Button Text="Search" ID="btnSearchJudul" CssClass="btn btn-primary" runat="server" />
            <br /><br />
            <asp:GridView runat="server" ID="gvBuku" CssClass="table table-striped" AutoGenerateColumns="False" DataKeyNames="KodeBuku" DataSourceID="sdsBuku">
                <Columns>
                    <asp:BoundField DataField="KodeBuku" HeaderText="KodeBuku" ReadOnly="True" SortExpression="KodeBuku" />
                    <asp:BoundField DataField="Judul" HeaderText="Judul" SortExpression="Judul" />
                    <asp:BoundField DataField="Deskripsi" HeaderText="Deskripsi" SortExpression="Deskripsi" />
                    <asp:BoundField DataField="Pengarang" HeaderText="Pengarang" SortExpression="Pengarang" />
                    <asp:BoundField DataField="TahunTerbit" HeaderText="TahunTerbit" SortExpression="TahunTerbit" />
                    <asp:BoundField DataField="Harga" HeaderText="Harga" SortExpression="Harga" />
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                    <asp:BoundField DataField="Penerbit" HeaderText="Penerbit" SortExpression="Penerbit" />
                </Columns>
            </asp:GridView>
        </div>

    </div>
</asp:Content>
