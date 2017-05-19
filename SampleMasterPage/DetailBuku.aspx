<%@ Page Title="" Language="C#" MasterPageFile="~/MyTheme.Master" AutoEventWireup="true" CodeBehind="DetailBuku.aspx.cs" Inherits="SampleMasterPage.DetailBuku" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="col-lg-12">
        <h1 class="page-header">Detail Buku</h1>

        <asp:SqlDataSource runat="server" ID="sdsBuku" 
            ConnectionString="<%$ ConnectionStrings:InalumDbConnectionString %>" 
            SelectCommand="SELECT * FROM [Buku] WHERE ([KodeBuku] = @KodeBuku)">
            <SelectParameters>
                <asp:QueryStringParameter Name="KodeBuku" QueryStringField="KodeBuku" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:ListView runat="server" ID="lvTampilBuku" DataSourceID="sdsBuku">
            <ItemTemplate>
                    <div class="row">
                        <div class="col-lg-5">
                            <asp:Image ImageUrl='<%# Eval("CoverPic","~/Images/{0}") %>' Width="150" runat="server" />
                        </div>
                        <div class="col-lg-7">
                            <h4><a href='<%# Eval("KodeBuku","~/DetailBuku?KodeBuku={0}") %>'><%# Eval("Judul") %><br />
                            </a></h4>
                            <p><%# Eval("Deskripsi") %></p>
                            <br />
                            <strong>Pengarang:</strong>&nbsp;<%# Eval("Pengarang") %><br />
                            <strong>Tahun Terbit:</strong>&nbsp;<%# Eval("TahunTerbit") %><br />
                            <strong>ISBN :</strong>&nbsp;<%# Eval("ISBN") %><br />
                            <strong>Penerbit :</strong>&nbsp<%# Eval("Penerbit") %><br />
                            <strong>Harga :</strong>&nbsp;Rp.<%# Eval("Harga") %><br />
                        </div>
                    <br />
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>
