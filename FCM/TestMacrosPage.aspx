<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestMacrosPage.aspx.cs" Inherits="FCM.TestMacrosPage" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

    <asp:UpdatePanel ID="MainUpdatePanel" runat="server">
        <ContentTemplate>

            <cc1:TabContainer ID="MainTabContainer" runat="server" ActiveTabIndex="0" AutoPostBack="True">

                <cc1:TabPanel ID="TabPanel1" runat="server" HeaderText="Your_header_text">
                    <ContentTemplate>

                        <p>Your_title</p>

                        <table class="filters_table">
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
                            <tr>
                                <asp:DropDownList runat="server" ID="DropDownListWeek"></asp:DropDownList>
                            </tr>
                        </table>

                        <div class="gridview_container">

                            <asp:GridView runat="server" 
                                ID="GridView1" 
                                DataSourceID="SqlDataSource1"
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
