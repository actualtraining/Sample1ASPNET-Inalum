<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="SampleValidation.aspx.cs" Inherits="Latihan2.SampleValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contoh Validasi</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset>
                <legend>Form Pegawai</legend>

                <asp:Label Text="First Name :" runat="server" /><br />
                <asp:TextBox ID="txtFirstName" runat="server" />
                <asp:RequiredFieldValidator ErrorMessage="{First Name Required}" 
                    ControlToValidate="txtFirstName" ForeColor="Red" runat="server" />
                <br /><br />

                <asp:Label Text="Last Name :" runat="server" /><br />
                <asp:TextBox runat="server" ID="txtLastName" />
                <asp:RequiredFieldValidator ErrorMessage="{Last Name Required}" 
                    ControlToValidate="txtLastName" ForeColor="Red" runat="server" />
                <br /><br />

                <asp:Button Text="Submit" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" /><br />
                <hr />
                <asp:Label ID="lblHasil" runat="server" />
            </fieldset>
        </div>
    </form>
</body>
</html>
