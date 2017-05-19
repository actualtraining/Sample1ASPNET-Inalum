<%@ Page Title="Tambah Buku" Language="C#" MasterPageFile="~/MyTheme.Master" AutoEventWireup="true" CodeBehind="TambahBuku.aspx.cs" Inherits="SampleMasterPage.TambahBuku" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="col-lg-12">
        <h1 class="page-header">Sample SQL Datasource</h1>

        <asp:SqlDataSource runat="server" ID="sdsKategori" ConnectionString="<%$ ConnectionStrings:InalumDbConnectionString %>" SelectCommand="SELECT * FROM [Kategori] ORDER BY [NamaKategori]" />
        <asp:SqlDataSource runat="server" ID="sdsBuku" 
            ConnectionString="<%$ ConnectionStrings:InalumDbConnectionString %>" 
            DeleteCommand="DELETE FROM [Buku] WHERE [KodeBuku] = @KodeBuku" 
            InsertCommand="INSERT INTO [Buku] ([KodeBuku], [KategoriID], [Judul], [Deskripsi], [Pengarang], [TahunTerbit], [Harga], [ISBN], [Qty], [Penerbit]) VALUES (@KodeBuku, @KategoriID, @Judul, @Deskripsi, @Pengarang, @TahunTerbit, @Harga, @ISBN, @Qty, @Penerbit)" 
            SelectCommand="SELECT * FROM [Buku]" 
            UpdateCommand="UPDATE [Buku] SET [CoverPic] = @CoverPic WHERE [KodeBuku] = @KodeBuku">
            <DeleteParameters>
                <asp:Parameter Name="KodeBuku" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="KodeBuku" Type="String" />
                <asp:Parameter Name="KategoriID" Type="Int32" />
                <asp:Parameter Name="Judul" Type="String" />
                <asp:Parameter Name="Deskripsi" Type="String" />
                <asp:Parameter Name="Pengarang" Type="String" />
                <asp:Parameter Name="TahunTerbit" Type="String" />
                <asp:Parameter Name="CoverPic" Type="String" />
                <asp:Parameter Name="Harga" Type="Decimal" />
                <asp:Parameter Name="ISBN" Type="String" />
                <asp:Parameter Name="Qty" Type="Int32" />
                <asp:Parameter Name="Penerbit" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CoverPic" Type="String" />
                <asp:Parameter Name="KodeBuku" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:Literal ID="ltKeterangan" runat="server" />
        <br />
        <div class="col-lg-6">
            <asp:ListView runat="server" ID="lvTambahBuku" DataSourceID="sdsBuku" InsertItemPosition="FirstItem"
                OnItemInserted="lvTambahBuku_ItemInserted">
                <InsertItemTemplate>
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="txtKodeBuku">Kode Buku:</label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txtKodeBuku" Text='<%# Bind("KodeBuku") %>' CssClass="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="ddKategori">Nama Kategori :</label>
                            <div class="col-sm-8">
                                <asp:DropDownList runat="server" ID="ddKategori" CssClass="form-control"
                                    DataSourceID="sdsKategori"
                                    DataTextField="NamaKategori" DataValueField="KategoriID" 
                                    SelectedValue='<%# Bind("KategoriID") %>' />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="txtJudul">Judul :</label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txtJudul" Text='<%# Bind("Judul") %>' CssClass="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="txtDeskripsi">Deskripsi :</label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txtDeskripsi" Text='<%# Bind("Deskripsi") %>' CssClass="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="txtPengarang">Pengarang :</label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txtPengarang" Text='<%# Bind("Pengarang") %>' CssClass="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="txtTahunTerbit">Tahun Terbit :</label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txtTahunTerbit" Text='<%# Bind("TahunTerbit") %>' CssClass="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="upPic">Cover Picture :</label>
                            <div class="col-sm-8">
                                <asp:FileUpload runat="server" ID="fpCoverPic" CssClass="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="txtHarga">Harga :</label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txtHarga" Text='<%# Bind("Harga") %>' CssClass="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="txtISBN">ISBN :</label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txtISBN" Text='<%# Bind("ISBN") %>' CssClass="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="txtQty">Quantity :</label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txtQty" Text='<%# Bind("Qty") %>' CssClass="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="txtPenerbit">Penerbit :</label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txtPenerbit" Text='<%# Bind("Penerbit") %>' CssClass="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-4 col-sm-8">
                                <asp:Button Text="Tambah" ID="btnTambah" 
                                    CssClass="btn btn-default" CommandName="Insert" runat="server" />
                            </div>
                        </div>
                    </div>
                </InsertItemTemplate>
                <ItemTemplate></ItemTemplate>
            </asp:ListView>
        </div>

        <div class="col-lg-6">
            <label for="txtKodeBuku">Kode Buku :</label><br />
            <asp:TextBox runat="server" ID="txtKodeBuku" AutoPostBack="true" OnTextChanged="txtKodeBuku_TextChanged" /><br /><br />

            <label for="txtNama
                Buku">Nama Buku :</label><br />
            <asp:TextBox runat="server" ID="txtNamaBuku" /><br /><br />
        </div>
    </div>
</asp:Content>
