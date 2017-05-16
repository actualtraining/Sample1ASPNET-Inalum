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
                
                <asp:Label Text="Password :" runat="server" /><br />
                <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" />
                <asp:RequiredFieldValidator ErrorMessage="{Password Required}" 
                    ControlToValidate="txtPassword" runat="server" />
                <br /><br />

                <asp:Label Text="Repassword" runat="server" /><br />
                <asp:TextBox runat="server" ID="txtRepassword" TextMode="Password" />
                <asp:CompareValidator ErrorMessage="{Password and repassword doesn't match}" 
                    ControlToValidate="txtRepassword" Operator="Equal"
                    ControlToCompare="txtPassword" runat="server" /><br /><br />

                <asp:Label Text="Umur :" runat="server" /><br />
                <asp:TextBox runat="server" ID="txtUmur" />
                <asp:CompareValidator ErrorMessage="{Tipe data harus Currency}" 
                    ControlToValidate="txtUmur" Operator="DataTypeCheck" 
                    Type="Currency" runat="server" /><br /><br />

                <asp:Label Text="Range Umur :" runat="server" /><br />
                <asp:TextBox runat="server" ID="txtRangeUmur" />
                <asp:RangeValidator ErrorMessage="{Umur harus 17 - 65}" 
                    ControlToValidate="txtRangeUmur" MinimumValue="17" 
                    MaximumValue="65" runat="server" /><br /><br />


                <asp:Button Text="Submit" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" /><br />
                <hr />
                <asp:Label ID="lblHasil" runat="server" />
            </fieldset>
        </div>
    </form>
</body>
</html>
