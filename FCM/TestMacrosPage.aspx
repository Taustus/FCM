<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestMacrosPage.aspx.cs" Inherits="FCM.TestMacrosPage" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

    <asp:UpdatePanel ID="MainUpdatePanel" runat="server">
        <ContentTemplate>

            <cc1:TabContainer ID="MainTabContainer" runat="server" ActiveTabIndex="0" AutoPostBack="True">

                <%--TabPanel with content--%>
                <cc1:TabPanel ID="TabPanel1" runat="server" HeaderText="Your_header_text">
                    <ContentTemplate>

                        <%--SqlDataSources--%>
                        <div>
                            <asp:SqlDataSource ID="SqlDataSourceWeek" runat="server" ConnectionString="<%$ ConnectionStrings:local %>"
                                CancelSelectOnNullParameter="false"
                                SelectCommand=" set language Russian
                                                set datefirst 1
                                                select distinct datepart(week, date) week 
                                                from chart
                                                where 
                                                datename(month, date) = isNull(@month, datename(month, date)) and
                                                year(date) = isNull(@year, year(date))">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownListMonth" Name="month" ConvertEmptyStringToNull="true" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="DropDownListYear" Name="year" ConvertEmptyStringToNull="true" PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <asp:SqlDataSource ID="SqlDataSourceMonth" runat="server" ConnectionString="<%$ ConnectionStrings:local %>"
                                CancelSelectOnNullParameter="false"
                                SelectCommand=" set language Russian
                                                set datefirst 1
                                                select distinct datename(month, date) month, month(date) monthnum
                                                from chart
                                                where 
                                                datepart(week, date) = isNull(@week, datepart(week, date)) and
                                                year(date) = isNull(@year, year(date))
                                                order by monthnum">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownListWeek" Name="week" ConvertEmptyStringToNull="true" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="DropDownListYear" Name="year" ConvertEmptyStringToNull="true" PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <asp:SqlDataSource ID="SqlDataSourceYear" runat="server" ConnectionString="<%$ ConnectionStrings:local %>"
                                CancelSelectOnNullParameter="false"
                                SelectCommand=" set language Russian
                                                set datefirst 1
                                                select distinct year(date) year
                                                from chart
                                                where 
                                                datepart(week, date) = isNull(@week, datepart(week, date)) and
                                                datename(month, date) = isNull(@month, datename(month, date))">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownListWeek" Name="week" ConvertEmptyStringToNull="true" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="DropDownListMonth" Name="month" ConvertEmptyStringToNull="true" PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <asp:SqlDataSource ID="SqlDataSourceMain" runat="server" ConnectionString="<%$ ConnectionStrings:local %>"
                                CancelSelectOnNullParameter="false"
                                SelectCommand="">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownListWeek" Name="week" ConvertEmptyStringToNull="true" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="DropDownListMonth" Name="month" ConvertEmptyStringToNull="true" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="DropDownListYear" Name="year" ConvertEmptyStringToNull="true" PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>

                        <%--Title over GridView and filters table--%>
                        <p class="gridview_title">Your_title</p>

                        <%--Filters for GridView--%>
                        <table class="filters_table">
                            <%--Titles row--%>
                            <tr>
                                <td>
                                    <p>Выбрать неделю:</p>
                                </td>
                                <td>
                                    <p>Выбрать месяц:</p>
                                </td>
                                <td>
                                    <p>Выбрать год:</p>
                                </td>
                            </tr>
                            <%--DropDownLists row--%>
                            <tr>
                                <td>
                                    <asp:DropDownList runat="server" ID="DropDownListWeek" DataSourceID="SqlDataSourceWeek"
                                        DataTextField="week"
                                        DataValueField="week"
                                        AutoPostBack="true"
                                        AppendDataBoundItems="true"
                                        OnDataBinding="DropDownWithDuplicatedItems_DataBinding"
                                        OnDataBound="DropDownWithDuplicatedItems_DataBound">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList runat="server" ID="DropDownListMonth" DataSourceID="SqlDataSourceMonth"
                                        DataTextField="month"
                                        DataValueField="month"
                                        AutoPostBack="true"
                                        AppendDataBoundItems="true"
                                        OnDataBinding="DropDownWithDuplicatedItems_DataBinding"
                                        OnDataBound="DropDownWithDuplicatedItems_DataBound">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList runat="server" ID="DropDownListYear" DataSourceID="SqlDataSourceYear"
                                        DataTextField="year"
                                        DataValueField="year"
                                        AutoPostBack="true"
                                        AppendDataBoundItems="true"
                                        OnDataBinding="DropDownWithDuplicatedItems_DataBinding"
                                        OnDataBound="DropDownWithDuplicatedItems_DataBound">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>

                        <%--GridView container for overflow--%>
                        <div class="gridview_container">

                            <%--GridView itself--%>
                            <asp:GridView runat="server"
                                ID="GridViewMain"
                                DataSourceID="SqlDataSourceMain"
                                CssClass="table your_class"
                                AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField DataField="column_0" HeaderText="column_0" />
                                    <%--Add your columns here--%>
                                </Columns>
                            </asp:GridView>

                        </div>

                    </ContentTemplate>
                </cc1:TabPanel>

            </cc1:TabContainer>

        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
