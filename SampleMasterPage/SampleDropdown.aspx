<%@ Page Title="Sample DropDown" Language="C#" MasterPageFile="~/MyTheme.Master" AutoEventWireup="true" CodeBehind="SampleDropdown.aspx.cs" Inherits="SampleMasterPage.SampleDropdown" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="col-lg-12">
        <h1 class="page-header">Sample Dropdown</h1>
        <br />

        <div class="col-lg-6">
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Sport :</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddSport" CssClass="form-control" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Password:</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="pwd" placeholder="Enter password">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Submit</button>
                    </div>
                </div>
            </div>
        </div>


    </div>
</asp:Content>
