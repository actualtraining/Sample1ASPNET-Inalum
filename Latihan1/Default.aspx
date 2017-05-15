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


                <asp:Button Text="Register" ID="btnRegister" runat="server" OnClick="btnRegister_Click" />
            </fieldset>
            <hr />
            <asp:Label ID="lblHasil" runat="server" />
        </div>
    </form>
</body>
</html>
