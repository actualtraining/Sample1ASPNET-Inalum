<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="SampleValidation.aspx.cs" Inherits="Latihan2.SampleValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contoh Validasi</title>
    <style type="text/css">
        .errorMessage { color:green; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <br />
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
                    ControlToValidate="txtLastName" CssClass="errorMessage" ForeColor="Red" runat="server" />
                <br /><br />
                
                <asp:Label Text="Password :" runat="server" /><br />
                <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" />
                <asp:RequiredFieldValidator ErrorMessage="{Password Required}" 
                    ControlToValidate="txtPassword" CssClass="errorMessage" runat="server" />
                <br /><br />

                <asp:Label Text="Repassword" runat="server" /><br />
                <asp:TextBox runat="server" ID="txtRepassword" TextMode="Password" />
                <asp:RequiredFieldValidator ErrorMessage="{Repassword Required}" 
                    ControlToValidate="txtRepassword" runat="server" />
                <asp:CompareValidator ErrorMessage="{Password and repassword doesn't match}" 
                    ControlToValidate="txtRepassword" Operator="Equal"
                    ControlToCompare="txtPassword" CssClass="errorMessage" runat="server" /><br /><br />

                <asp:Label Text="Umur :" runat="server" /><br />
                <asp:TextBox runat="server" ID="txtUmur" />
                <asp:CompareValidator ErrorMessage="{Tipe data harus Currency}" 
                    ControlToValidate="txtUmur" Operator="DataTypeCheck" 
                    Type="Currency" CssClass="errorMessage" runat="server" /><br /><br />

                <asp:Label Text="Range Umur :" runat="server" /><br />
                <asp:TextBox runat="server" ID="txtRangeUmur" />
                <asp:RangeValidator ErrorMessage="{Umur harus 17 - 65}" 
                    ControlToValidate="txtRangeUmur" CssClass="errorMessage" MinimumValue="17" 
                    MaximumValue="65" runat="server" /><br /><br />

                <asp:Label Text="Email :" runat="server" /><br />
                <asp:TextBox runat="server" ID="txtEmail" />
                <asp:RegularExpressionValidator ErrorMessage="{Email Tidak Sesuai}" 
                    ControlToValidate="txtEmail" 
                    ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" runat="server" />
                <br /><br />

                <asp:Label Text="Nik :" runat="server" /><br />
                <asp:TextBox runat="server" ID="txtNik" />
                <asp:CustomValidator ErrorMessage="{Nik tidak sesuai}" 
                    ControlToValidate="txtNik" runat="server" ID="cvNik" 
                    OnServerValidate="cvNik_ServerValidate" /><br /><br />

                <asp:Button Text="Submit" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" /><br />
                <hr />
                <asp:Label ID="lblHasil" runat="server" />
            </fieldset>

            <br />
            <asp:ValidationSummary runat="server" HeaderText="Kesalahan yang ditemukan" 
                ShowSummary="true" ShowMessageBox="true" DisplayMode="BulletList" />
        </div>
    </form>
</body>
</html>
