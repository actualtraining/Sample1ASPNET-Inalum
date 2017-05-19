<%@ Page Title="Sample ListView" Language="C#" MasterPageFile="~/MyTheme.Master" AutoEventWireup="true" CodeBehind="SampleListView.aspx.cs" Inherits="SampleMasterPage.SampleListView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="col-lg-12">
        <h1 class="page-header">Sample SQL Datasource</h1>
    </div>

    <asp:SqlDataSource runat="server" ID="sdsKategori" 
        ConnectionString="<%$ ConnectionStrings:InalumDbConnectionString %>" 
        SelectCommand="SELECT * FROM [Kategori] ORDER BY [NamaKategori]" />

    <asp:ListView runat="server" ID="lvKategori" DataSourceID="sdsKategori">
        <LayoutTemplate>
            <asp:placeholder ID="itemPlaceholder" runat="server" />
             <asp:DataPager ID="dpKategori" runat="server" PageSize="5">
                <Fields>
                    <asp:NextPreviousPagerField ShowLastPageButton="false" ShowFirstPageButton="true"
                        ShowNextPageButton="false" ShowPreviousPageButton="true" />
                    <asp:NumericPagerField />
                    <asp:NextPreviousPagerField ShowLastPageButton="true" 
                        ShowFirstPageButton="false" ShowNextPageButton="true" ShowPreviousPageButton="false" />
                </Fields>
            </asp:DataPager>
        </LayoutTemplate>
        <ItemTemplate>
            <div class="col-lg-2" style="background-color:antiquewhite;border:2px solid red;margin:3px;">
                <%# Eval("KategoriID") %> <br />
                <%# Eval("NamaKategori") %>
            </div>
        </ItemTemplate>
    </asp:ListView>
    <br /><hr />

    <asp:ListView runat="server" ID="lvTableKat" DataSourceID="sdsKategori">
        <LayoutTemplate>
            <table class="table table striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nama</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:placeholder ID="itemPlaceholder" runat="server" />
                </tbody>
            </table>
            <asp:DataPager ID="dpKategori" runat="server" PageSize="5">
                <Fields>
                    <asp:NextPreviousPagerField />
                    <asp:NumericPagerField />
                </Fields>
            </asp:DataPager>
        </LayoutTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Eval("KategoriID") %></td>
                <td><%# Eval("NamaKategori") %></td>
            </tr>
        </ItemTemplate>
    </asp:ListView>
    
</asp:Content>
