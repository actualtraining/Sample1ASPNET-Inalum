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
            <asp:RadioButton ID="rdCSharp" Text="C#" GroupName="Bahasa" AutoPostBack="true" 
                OnCheckedChanged="rdBahasa_CheckedChanged" runat="server" />
            <asp:RadioButton ID="rdVB" Text="VB" GroupName="Bahasa" AutoPostBack="true" 
                OnCheckedChanged="rdBahasa_CheckedChanged" runat="server" />
            <asp:RadioButton ID="rdJava" Text="Java" GroupName="Bahasa" AutoPostBack="true" 
                OnCheckedChanged="rdBahasa_CheckedChanged" runat="server" />
            <br /><br />

            <asp:Label Text="Masukan IDE favorite anda ?" runat="server" /><br />
            <asp:RadioButton ID="rdVS" Text="Visual Studio 2015" GroupName="IDE" runat="server" />
            <asp:RadioButton ID="rdEclipse" Text="Eclipse" runat="server" GroupName="IDE" />
            <asp:RadioButton ID="rdSublime" Text="Sublime Text" runat="server" GroupName="IDE" /><br /><br />

            <br /><hr />
            <asp:Label ID="lblHasil" runat="server" />
        </div>
    </form>
</body>
</html>
