<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SampleRadio.aspx.cs" Inherits="Latihan1.SampleRadio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="Masukan bahasa permrograman favorite anda ?" runat="server" /><br />
            <asp:RadioButton Text="C#" GroupName="Bahasa" runat="server" />
            <asp:RadioButton Text="VB" GroupName="Bahasa" runat="server" />
            <asp:RadioButton Text="Java" GroupName="Bahasa" runat="server" />
            <br /><br />

            <asp:Label Text="Masukan IDE favorite anda ?" runat="server" /><br />
            <asp:RadioButton Text="Visual Studio 2015" GroupName="IDE" runat="server" />
            <asp:RadioButton Text="Eclipse" runat="server" GroupName="IDE" />
            <asp:RadioButton Text="Sublime Text" runat="server" GroupName="IDE" /><br />
        </div>
    </form>
</body>
</html>
