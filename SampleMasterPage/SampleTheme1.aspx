<%@ Page Title="" Language="C#" MasterPageFile="~/MyTheme.Master" AutoEventWireup="true" CodeBehind="SampleTheme1.aspx.cs" Inherits="SampleMasterPage.SampleTheme1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="col-lg-12">
        <h1 class="page-header">Daftar Pegawai
                           
            <small>Teknologi Informasi</small>
        </h1>
        <ol class="breadcrumb">
            <li>
                <i class="fa fa-dashboard"></i><a href="index.html">&nbsp;Dashboard</a>
            </li>
            <li class="active">
                <i class="fa fa-file"></i>&nbsp;Blank Page
            </li>
        </ol>
        
        <p>Halo <strong>Erick</strong> <em>Hello</em></p>
        <p style="color:blue;background-color:aliceblue;">
            Ini adalah konten halaman detail pegawai</p>

        <p>Bahasa pemrograman favorite anda ?</p>
        <ul>
            <li>C#</li>
            <li>VB</li>
            <li>Java</li>
        </ul>

        <br />
        <ol type="A">
            <li>C#</li>
            <li>VB</li>
            <li>Java</li>
        </ol>

        <label for="firstname">First Name :</label>
        <input type="text" name="firstname" /><br /><br />

        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Budi Sujono</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Erick Kurniawan</td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
