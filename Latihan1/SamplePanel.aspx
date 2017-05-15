<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SamplePanel.aspx.cs" Inherits="Latihan1.SamplePanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sample Panel</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="Pilih disini jika anda memiliki kode voucher" runat="server" /><br />
            <asp:CheckBox ID="chkVoucher" Text="Punya Voucher" AutoPostBack="true" runat="server" 
                OnCheckedChanged="chkVoucher_CheckedChanged" />
            <asp:Panel runat="server" ID="pnlSample" Visible="false">
                <asp:Label Text="Masukan Kode Voucher" runat="server" />
                <asp:TextBox runat="server" ID="txtKodeVoucher" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
