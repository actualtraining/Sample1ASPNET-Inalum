<%@ Page Title="Sample Parameter" Language="C#" MasterPageFile="~/MyTheme.Master" AutoEventWireup="true" CodeBehind="SampleSqlParameter.aspx.cs" Inherits="SampleMasterPage.SampleSqlParameter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="col-lg-12">
        <h1 class="page-header">Sample SQL Datasource</h1>

        <div class="col-lg-6">
            <asp:UpdatePanel runat="server" ID="upKategori" UpdateMode="Conditional">
                <ContentTemplate>
                    <label for="txtSearch">Masukan Nama :</label>
                    <asp:TextBox runat="server" ID="txtSearch" />
                    <asp:Button Text="Search" ID="btnSearch" CssClass="btn btn-warning" runat="server" 
                        OnClick="btnSearch_Click" />
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
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>


        </div>
        <div class="col-lg-6 pre-scrollable">

            <asp:UpdatePanel runat="server" ID="upBuku" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:SqlDataSource runat="server" ID="sdsBuku"
                        ConnectionString="<%$ ConnectionStrings:InalumDbConnectionString %>"
                        SelectCommand="SELECT [KodeBuku], [Judul], [Pengarang], [TahunTerbit], [ISBN], [Penerbit] FROM [Buku] 
                WHERE ((Judul LIKE '%' + @Keyword + '%') OR (Pengarang LIKE '%' + @Keyword + '%'))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtSearchKeyword" Name="Keyword"
                                PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                    <label for="txtSearchKeyword">Masukan Keyword :</label>
                    <asp:TextBox runat="server" ID="txtSearchKeyword" /><br />

                    <asp:Button Text="Search" ID="btnSearchJudul" CssClass="btn btn-primary"
                        OnClick="btnSearchJudul_Click" runat="server" />
                    <br />
                    <br />
                    <asp:GridView runat="server" ID="gvBuku" CssClass="table table-striped" AutoGenerateColumns="False" DataKeyNames="KodeBuku" DataSourceID="sdsBuku">
                        <Columns>
                            <asp:BoundField DataField="KodeBuku" HeaderText="KodeBuku" ReadOnly="True" SortExpression="KodeBuku" />
                            <asp:BoundField DataField="Judul" HeaderText="Judul" SortExpression="Judul" />
                            <asp:BoundField DataField="Pengarang" HeaderText="Pengarang" SortExpression="Pengarang" />
                            <asp:BoundField DataField="TahunTerbit" HeaderText="TahunTerbit" SortExpression="TahunTerbit" />
                            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                            <asp:BoundField DataField="Penerbit" HeaderText="Penerbit" SortExpression="Penerbit" />
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>


        </div>
    </div>
    <br />
    <div class="col-lg-12">
        <div class="col-lg-6 pre-scrollable">

            <asp:UpdatePanel runat="server" ID="upBeritaDropdown" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:SqlDataSource runat="server" ID="sdsKategoriDropdown" ConnectionString="<%$ ConnectionStrings:InalumDbConnectionString %>"
                        SelectCommand="SELECT * FROM [Kategori] ORDER BY [NamaKategori]" />

                    <asp:SqlDataSource runat="server" ID="sdsBukuDetail" ConnectionString="<%$ ConnectionStrings:InalumDbConnectionString %>" SelectCommand="SELECT [KodeBuku], [Judul], [Pengarang], [TahunTerbit], [ISBN], [Penerbit], [Harga] FROM [Buku] WHERE ([KategoriID] = @KategoriID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddKategori" Name="KategoriID" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                    <label for="ddKategori">Pilih Kategori :</label>
                    <asp:DropDownList runat="server" ID="ddKategori" AutoPostBack="true"
                        DataSourceID="sdsKategoriDropdown"
                        DataTextField="NamaKategori" DataValueField="KategoriID" OnSelectedIndexChanged="ddKategori_SelectedIndexChanged">
                    </asp:DropDownList><br />

                    <asp:GridView runat="server" ID="gvBukuDetail" CssClass="table table-striped"
                        AutoGenerateColumns="False" DataKeyNames="KodeBuku" DataSourceID="sdsBukuDetail">
                        <Columns>
                            <asp:BoundField DataField="KodeBuku" HeaderText="KodeBuku" ReadOnly="True" SortExpression="KodeBuku" />
                            <asp:BoundField DataField="Judul" HeaderText="Judul" SortExpression="Judul" />
                            <asp:BoundField DataField="Pengarang" HeaderText="Pengarang" SortExpression="Pengarang" />
                            <asp:BoundField DataField="TahunTerbit" HeaderText="TahunTerbit" SortExpression="TahunTerbit" />
                            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                            <asp:BoundField DataField="Penerbit" HeaderText="Penerbit" SortExpression="Penerbit" />
                            <asp:BoundField DataField="Harga" HeaderText="Harga (Rp.)" SortExpression="Harga"
                                DataFormatString="{0:N0}" />
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>


        </div>
    </div>
</asp:Content>
