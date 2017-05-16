<%@ Page Title="Sample Wizard Control" Language="C#" MasterPageFile="~/MyTheme.Master" AutoEventWireup="true" CodeBehind="SampleWizardControl.aspx.cs" Inherits="SampleMasterPage.SampleWizardControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="col-lg-12">
        <h1 class="page-header">Sample Wizard Control</h1>
            <small>Teknologi Informasi</small>

            <asp:Wizard ID="wizardData" runat="server" ActiveStepIndex="0" BackColor="#E6E2D8" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em">
                <HeaderStyle BackColor="#666666" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
                <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
                <SideBarButtonStyle ForeColor="White" />
                <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" VerticalAlign="Top" />
                <StepStyle BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" />
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
</asp:Content>
