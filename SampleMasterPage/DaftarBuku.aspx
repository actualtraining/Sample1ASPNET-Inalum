<%@ Page Title="Daftar Buku" Language="C#" MasterPageFile="~/MyTheme.Master" AutoEventWireup="true" CodeBehind="DaftarBuku.aspx.cs" Inherits="SampleMasterPage.DaftarBuku" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="col-lg-12">
        <h1 class="page-header">Sample SQL Datasource</h1>

        <asp:SqlDataSource runat="server" ID="sdsBuku" 
            ConnectionString="<%$ ConnectionStrings:InalumDbConnectionString %>" 
            SelectCommand="SELECT * FROM [Buku] ORDER BY [Judul]" />

        <asp:ListView runat="server" ID="lvTampilBuku" DataSourceID="sdsBuku">
            <LayoutTemplate>
                <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                <div class="col-lg-6">
                    <asp:DataPager runat="server" ID="dpBuku" PageSize="2">
                        <Fields>
                            <asp:NextPreviousPagerField />
                            <asp:NumericPagerField />
                        </Fields>
                    </asp:DataPager> 
                </div>
            </LayoutTemplate>
            <ItemTemplate>
                <div class="col-lg-4" style="margin:2px;">
                    <div class="row">
                        <div class="col-lg-5">
                            <asp:Image ImageUrl='<%# Eval("CoverPic","~/Images/{0}") %>' Width="150" runat="server" />
                        </div>
                        <div class="col-lg-7">
                            <h4><%# Eval("Judul") %><br /></h4>
                            <p><%# Eval("Deskripsi") %></p><br />
                            <strong>Pengarang:</strong>&nbsp;<%# Eval("Pengarang") %><br />
                            <strong>Tahun Terbit:</strong>&nbsp;<%# Eval("TahunTerbit") %><br />
                            <strong>ISBN :</strong>&nbsp;<%# Eval("ISBN") %><br />
                            <strong>Penerbit :</strong>&nbsp<%# Eval("Penerbit") %><br />
                            <strong>Harga :</strong>&nbsp;Rp.<%# Eval("Harga") %><br />
                        </div>
                    </div><br />
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>
