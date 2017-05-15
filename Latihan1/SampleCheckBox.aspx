<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SampleCheckBox.aspx.cs" Inherits="Latihan1.SampleCheckBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sample Checkbox</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="Check untuk setuju dengan syarat dan ketentuan yang berlaku" runat="server" /><br />
            <asp:CheckBox Text="Saya setuju dengan syarat dan ketentuan" ID="chkSetuju" runat="server" />
            <br />
            <asp:Button Text="Submit" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" /><br /><br />
            <asp:Label ID="lblHasil" runat="server" />
        </div>
    </form>
</body>
</html>
