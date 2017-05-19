<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="SampleMasterPage.WebForm2" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report Kategori</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:SqlDataSource runat="server" ID="sdsKategori" ConnectionString="<%$ ConnectionStrings:InalumDbConnectionString %>" 
                SelectCommand="SELECT * FROM [Kategori] ORDER BY [NamaKategori]" />

            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="1024" BackColor="" 
                ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226">
                <LocalReport ReportPath="Report\ReportKategori.rdlc">
                </LocalReport>
            </rsweb:ReportViewer>
        </div>
    </form>
</body>
</html>
