<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContohImage.aspx.cs" Inherits="Latihan1.ContohImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menampilkan Image Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="imgPegawai" Width="150" runat="server" /><br /><br />
            <asp:Button Text="Show Random Images" ID="btnRandom" runat="server" OnClick="btnRandom_Click" /><br />
        </div>
    </form>
</body>
</html>
