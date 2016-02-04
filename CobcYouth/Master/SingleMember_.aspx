<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SingleMember.aspx.cs" Inherits="CobcYouth.Master.SingleMember" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../CSS/Table.css" rel="stylesheet" />
    <link href="../CSS/Accordion.css" rel="stylesheet" />


    <ajaxToolkit:Accordion ID="AccordionMember" runat="Server" SelectedIndex="0" HeaderCssClass="AccordionHeader"
        HeaderSelectedCssClass="AccordionHeaderSelected" ContentCssClass="AccordionContent"
        AutoSize="Limit" FadeTransitions="true" TransitionDuration="250" FramesPerSecond="40"
        RequireOpenedPane="false" SuppressHeaderPostbacks="true">
        <Panes>
            <ajaxToolkit:AccordionPane ID="AccordionPane1" runat="server" ContentCssClass="AccordionContent"
                HeaderCssClass="AccordionHeader">
                <Header>
                    基本資料
                </Header>
                <Content>
                    <table class="BlueGrayTable">
                        <tr>
                            <td style="width: 50px">
                                <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label></td>
                            <td colspan="3">
                                <asp:Label ID="MemberID" runat="server" Text=""></asp:Label></td>

                        </tr>
                        <tr>
                            <td style="width: 50px">
                                <asp:Label ID="Label2" runat="server" Text="名稱"></asp:Label></td>
                            <td style="width: 120px">
                                <asp:Label ID="MemberName" runat="server" Text=""></asp:Label></td>


                        </tr>

                        <tr>
                            <td style="width: 50px">
                                <asp:Label ID="Label3" runat="server" Text="暱稱"></asp:Label></td>
                            <td style="width: 120px">
                                <asp:Label ID="NickName" runat="server" Text=""></asp:Label></td>
                        </tr>

                        <tr>
                            <td style="width: 50px">
                                <asp:Label ID="Label4" runat="server" Text="性別"></asp:Label></td>
                            <td style="width: 120px">
                                <asp:Label ID="Gender" runat="server" Text=""></asp:Label></td>

                        </tr>

                        <tr>
                            <td style="width: 50px">
                                <asp:Label ID="Label5" runat="server" Text="團契"></asp:Label></td>
                            <td style="width: 120px">
                                <asp:Label ID="Fellowship" runat="server" Text=""></asp:Label></td>
                        </tr>
                    </table>
                </Content>
            </ajaxToolkit:AccordionPane>
            <ajaxToolkit:AccordionPane ID="AccordionPane2" runat="server" ContentCssClass="AccordionContent"
                HeaderCssClass="AccordionHeader">
                <Header>
                    聯絡資料
                </Header>
                <Content>
                    <table class="BlueGrayTable">
                        <tr>
                            <td style="width: 50px">
                                <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label></td>
                            <td colspan="3">
                                <asp:Label ID="Email" runat="server" Text=""></asp:Label></td>
                        </tr>

                        <tr>
                            <td style="width: 50px">
                                <asp:Label ID="Label8" runat="server" Text="Facebook"></asp:Label></td>
                            <td colspan="3">
                                <asp:Label ID="Facebook" runat="server" Text=""></asp:Label></td>
                        </tr>

                        <tr>
                            <td style="width: 50px">
                                <asp:Label ID="Label10" runat="server" Text="Tel"></asp:Label></td>
                            <td colspan="3">
                                <asp:Label ID="Tel" runat="server" Text=""></asp:Label></td>
                        </tr>

                        <tr>
                            <td style="width: 50px">
                                <asp:Label ID="Label12" runat="server" Text="Mobile"></asp:Label></td>
                            <td colspan="3">
                                <asp:Label ID="Mobile" runat="server" Text=""></asp:Label></td>
                        </tr>
                    </table>
                </Content>
            </ajaxToolkit:AccordionPane>
            <ajaxToolkit:AccordionPane ID="AccordionPane3" runat="server" ContentCssClass="AccordionContent"
                HeaderCssClass="AccordionHeader">
                <Header>
                   事奉資料
                </Header>
                <Content>
                    事奉資料
                </Content>
            </ajaxToolkit:AccordionPane>

            <ajaxToolkit:AccordionPane ID="AccordionPane5" runat="server" ContentCssClass="AccordionContent"
                HeaderCssClass="AccordionHeader">
                <Header>
                    主日學資料
                </Header>
                <Content>
                    主日學資料
                </Content>
            </ajaxToolkit:AccordionPane>

            <ajaxToolkit:AccordionPane ID="AccordionPane4" runat="server" ContentCssClass="AccordionContent"
                HeaderCssClass="AccordionHeader">
                <Header>
                   靈命成長計劃
                </Header>
                <Content>
                    靈命成長計劃
                </Content>
            </ajaxToolkit:AccordionPane>
        </Panes>
        <HeaderTemplate>
            ...
        </HeaderTemplate>
        <ContentTemplate>
            ...
        </ContentTemplate>
    </ajaxToolkit:Accordion>



    <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
</asp:Content>
