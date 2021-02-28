<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZabbixStat.aspx.cs" Inherits="FCM.ZabbixStat" MasterPageFile="~/Site.Master" %>


<asp:Content runat="server" ContentPlaceHolderID="MainContent">

    <div class="sqlDataSourcesContainer">
        <asp:SqlDataSource runat="server" ID="FirstGridViewSqlDataSource" ConnectionString="<%$ ConnectionStrings:local %>"
        SelectCommand="select * from [TeamProject].[dbo].[table_example]"></asp:SqlDataSource>
    </div>

    <asp:GridView runat="server" ID="FirstGridView" DataSourceID="FirstGridViewSqlDataSource" CssClass="gridview-one">
    </asp:GridView>

</asp:Content>
