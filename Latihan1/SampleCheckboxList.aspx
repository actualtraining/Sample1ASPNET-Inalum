<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SampleCheckboxList.aspx.cs" Inherits="Latihan1.SampleCheckboxList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sample Checkbox List</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="Pilih hobby anda ?" runat="server" /><br />
            <asp:CheckBoxList runat="server" ID="clHobby" RepeatDirection="Horizontal">
                <asp:ListItem Text="Ping pong" Value="Ping pong" />
                <asp:ListItem Text="Badminton" Value="Badminton" />
                <asp:ListItem Value="Mancing" Text="Mancing" />
                <asp:ListItem Text="Futsal" Value="Futsal" />
                <asp:ListItem Text="Volley" Value="Volley" />
            </asp:CheckBoxList>
            <br />
            <asp:Button Text="Submit" ID="btnSubmit" runat="server" 
                OnClick="btnSubmit_Click" /><br /><hr />
            <asp:Label ID="lblHasil" runat="server" />
        </div>
    </form>
</body>
</html>
