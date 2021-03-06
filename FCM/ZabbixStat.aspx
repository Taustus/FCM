<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZabbixStat.aspx.cs" Inherits="FCM.ZabbixStat" MasterPageFile="~/Site.Master" %>


<asp:Content runat="server" ContentPlaceHolderID="MainContent">

    <div class="sqlDataSourcesContainer">
        <asp:SqlDataSource runat="server" ID="FirstGridViewSqlDataSource" ConnectionString="<%$ ConnectionStrings:local %>"
            SelectCommand="select * from [TeamProject].[dbo].[table_example]"></asp:SqlDataSource>
    </div>

    <asp:GridView runat="server" ID="FirstGridView" DataSourceID="FirstGridViewSqlDataSource" CssClass="table gridview_with_row_and_column_selection" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="column_0" HeaderText="Регион" />
            <asp:BoundField DataField="column_1" HeaderText="Филиал" />
            <asp:BoundField DataField="column_2" HeaderText="Значение" />
        </Columns>
    </asp:GridView>

</asp:Content>
