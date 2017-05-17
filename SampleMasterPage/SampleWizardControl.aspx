<%@ Page Title="Sample Wizard Control" Language="C#" MasterPageFile="~/MyTheme.Master" AutoEventWireup="true" CodeBehind="SampleWizardControl.aspx.cs" Inherits="SampleMasterPage.SampleWizardControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="col-lg-12">
        <h1 class="page-header">Sample Wizard Control <small>Teknologi Informasi</small></h1>
       
        <div class="col-lg-6">
            <asp:Wizard ID="wizardData" runat="server" CssClass="table" ActiveStepIndex="0">
                <WizardSteps>
                    <asp:WizardStep ID="WizardStep1" runat="server" Title="Registrasi">
                        <h2>Registrasi</h2>
                        <p>Registrasi Wizard</p>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Cek Barang">
                        <h2>Isi Form Pembelian</h2>
                        <p>Isi Form Pembelian</p>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="Masukan Pembayaran">
                        <h2>Pilih Daftar Pembayaran</h2>
                        <p>Isi Pilih daftar pembayaran</p>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </div>
    </div>
</asp:Content>
