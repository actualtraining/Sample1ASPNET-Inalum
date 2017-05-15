<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Latihan1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="MyStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset>
                <legend>Registration</legend>

                <asp:Label Text="First Name :" runat="server" /><br />
                <asp:TextBox runat="server" CssClass="controlStyle" ID="txtFirstName" /><br />
                <br />

                <asp:Label Text="Last Name :" runat="server" /><br />
                <asp:TextBox runat="server" CssClass="controlStyle" ID="txtLastName" /><br /><br />

                <asp:Label Text="Password :" runat="server" /><br />
                <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" /><br /><br />

                <asp:Label Text="Umur :" runat="server" /><br />
                <asp:TextBox runat="server" TextMode="Number" ID="txtUmur" /><br /><br />

                <asp:Label Text="Komentar :" runat="server" /><br />
                <asp:TextBox runat="server" ID="txtKomentar" TextMode="MultiLine" Rows="5" Width="200" /><br /><br />

                <asp:Label Text="Tanggal Lahir :" runat="server" /><br />
                <asp:TextBox runat="server" TextMode="Date" ID="txtTanggal" /><br /><br />

                <asp:Label Text="Email :" runat="server" /><br />
                <asp:TextBox runat="server" ID="txtEmail" TextMode="Email" /><br /><br />

                <asp:Label Text="Range :" runat="server" /><br />
                <asp:TextBox runat="server" TextMode="Range" MaxLength="100" ID="txtRange" /><br /><br />

                <asp:Button Text="Register" ID="btnRegister" runat="server" OnClick="btnRegister_Click" />
            </fieldset>
            <hr />
            <asp:Label ID="lblHasil" runat="server" />
        </div>
    </form>
</body>
</html>
