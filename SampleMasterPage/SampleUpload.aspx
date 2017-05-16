<%@ Page Title="Sample Upload" Language="C#" MasterPageFile="~/MyTheme.Master" AutoEventWireup="true" CodeBehind="SampleUpload.aspx.cs" Inherits="SampleMasterPage.SampleUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="col-lg-12">
        <h1 class="page-header">Upload Foto Pegawai
                           
            <small>Teknologi Informasi</small>
        </h1>

        <asp:Label Text="Masukan Gambar :" runat="server" />
        <asp:FileUpload ID="fpGambar" runat="server" /><br />
        <asp:Button Text="Upload Gambar" ID="btnUpload" runat="server" OnClick="btnUpload_Click" /><br />
        <hr />
        <asp:Label ID="lblKeterangan" runat="server" />

    </div>
</asp:Content>
