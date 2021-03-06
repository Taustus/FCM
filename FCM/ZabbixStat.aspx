<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZabbixStat.aspx.cs" Inherits="FCM.ZabbixStat" MasterPageFile="~/Site.Master" %>


<asp:Content runat="server" ContentPlaceHolderID="MainContent">

    <link href="bootstrap.min.css" rel="stylesheet" />

    <style>
        .content-table {
            border-collapse: collapse;
            margin: 25px 0;
            font-size: 0.9em;
            min-width: 400px;
            border-radius: 5px 5px 0 0;
            overflow: hidden;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
        }

            .content-table th {
                background-color: #ffd800;
                color: #000000;
                text-align: left;
                font-weight: bold;
            }

            .content-table th,
            .content-table td {
                padding: 12px 15px;
            }

            .content-table tbody tr {
                border-bottom: 1px solid #dddddd;
            }

                .content-table tbody tr:last-of-type {
                    border-bottom: 2px solid #ffd800;
                }

            .content-table td, th {
                position: relative;
            }

            .content-table tbody tr:nth-of-type(even) {
                background-color: #f3f3f3;
            }
    </style>


    <div class="sqlDataSourcesContainer">
        <asp:SqlDataSource runat="server" ID="FirstGridViewSqlDataSource" ConnectionString="<%$ ConnectionStrings:local %>"
            SelectCommand="select * from [TeamProject].[dbo].[table_example]"></asp:SqlDataSource>
    </div>

    <asp:GridView runat="server" ID="FirstGridView" DataSourceID="FirstGridViewSqlDataSource" CssClass="table content-table" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="column_0" HeaderText="Регион" />
            <asp:BoundField DataField="column_1" HeaderText="Филиал" />
            <asp:BoundField DataField="column_2" HeaderText="Значение" />
        </Columns>
    </asp:GridView>

</asp:Content>
