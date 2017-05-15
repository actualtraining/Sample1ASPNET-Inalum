<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SampleAutoPostBack.aspx.cs" Inherits="Latihan1.SampleAutoPostBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sample Auto PostBack</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="Search :" runat="server" />
            <asp:TextBox runat="server" ID="txtSearch" AutoPostBack="true" OnTextChanged="txtSearch_TextChanged"  />
            <br />
            <hr />
            <asp:Label ID="lblSearch" runat="server" />
        </div>
    </form>
</body>
</html>
