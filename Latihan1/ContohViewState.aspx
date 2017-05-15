<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContohViewState.aspx.cs" Inherits="Latihan1.ContohViewState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contoh View State</title
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="0" ID="lblNilai" runat="server" />
            <asp:Button Text="Count" ID="btnCount" runat="server" OnClick="btnCount_Click" />
        </div>
    </form>
</body>
</html>
