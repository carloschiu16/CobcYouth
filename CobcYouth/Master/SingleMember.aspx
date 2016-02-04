<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="SingleMember.aspx.cs" Inherits="CobcYouth.Master.SingleMember" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../CSS/Table.css" rel="stylesheet" />
    <link href="../CSS/Accordion.css" rel="stylesheet" />
    <table cellspacing="3" class="DefaultTable">
        <tr>
            <th style="border-style: solid; border-width: thin; font-size: large; background-color: #210B61; text-align: center; color: #FFFFFF;" colspan="3">
                青崇團友資料
            </th>
        </tr>
        <tr>
            <td style="border-width: thin; padding: 2px; border-style: solid; height: auto;
                width: 150px; font-weight: normal; font-size: large; color: #FFFFFF; background: linear-gradient(#425D8B, #081937);
                text-align: center;" colspan="2">
                基本資料
            </td>
            <td rowspan="12" style="margin: 2px 2px 2px 2px; border-width: thin; border-style: solid;
                height: auto; width: 60%; padding-top: 0px; padding-right: 2px; padding-bottom: 2px;
                padding-left: 2px; top: 0px;" valign="top">
                <ajaxToolkit:Accordion ID="AccordionMember" runat="Server" SelectedIndex="0" HeaderCssClass="AccordionHeader"
                    HeaderSelectedCssClass="AccordionHeaderSelected" ContentCssClass="AccordionContent"
                    AutoSize="Limit" FadeTransitions="true" TransitionDuration="250" FramesPerSecond="40"
                    RequireOpenedPane="false" SuppressHeaderPostbacks="true">
                    <panes>
            
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
        </panes>
                    <headertemplate>
            ...
        </headertemplate>
                    <contenttemplate>
            ...
        </contenttemplate>
                </ajaxToolkit:Accordion>
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; padding: 2px; border-style: solid; height: auto;
                width: 150px;">
                <asp:Label ID="lbID" runat="server" Text="ID"></asp:Label>
            </td>
            <td style="border-width: thin; padding: 2px; border-style: solid; height: auto;
                width: 200px;">
                <asp:Label ID="MemberID" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; padding: 2px; border-style: solid; height: auto;
                width: 150px;" valign="top">
                <asp:Label ID="lbName" runat="server" Text="名稱"></asp:Label>
            </td>
            <td style="border-width: thin; padding: 2px; border-style: solid; height: auto;
                width: 200px;">
                <asp:Label ID="MemberName" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; padding: 2px; border-style: solid; height: auto;
                width: 150px;" valign="top">
                <asp:Label ID="Label1" runat="server" Text="暱稱"></asp:Label>
            </td>
            <td style="border-width: thin; padding: 2px; border-style: solid; height: auto;
                width: 200px;">
                <asp:Label ID="NickName" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; padding: 2px; border-style: solid; height: auto;
                width: 150px;" valign="top">
                <asp:Label ID="Label3" runat="server" Text="性別"></asp:Label>
            </td>
            <td style="border-width: thin; padding: 2px; border-style: solid; height: auto;
                width: 200px;">
                <asp:Label ID="Gender" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; padding: 2px; border-style: solid; height: auto;
                width: 150px;" valign="top">
                <asp:Label ID="Label5" runat="server" Text="團契"></asp:Label>
            </td>
            <td style="border-width: thin; padding: 2px; border-style: solid; height: auto;
                width: 200px;">
                <asp:Label ID="Fellowship" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; padding: 2px; border-style: solid; height: auto;
                width: 200px; font-weight: normal; font-size: large; color: #FFFFFF; background: linear-gradient(#425D8B, #081937);
                text-align: center;" colspan="2">
                聯絡資料
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; padding: 2px; border-style: solid; height: auto;
                width: 150px;" valign="top">
                <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="border-width: thin; padding: 2px; border-style: solid; height: auto;
                width: 200px;">
                <asp:Label ID="Email" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; padding: 2px; border-style: solid; height: auto;
                width: 150px;" valign="top">
                <asp:Label ID="Label9" runat="server" Text="Facebook"></asp:Label>
            </td>
            <td style="border-width: thin; padding: 2px; border-style: solid; height: auto;
                width: 200px;">
                <asp:Label ID="Facebook" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; padding: 2px; border-style: solid; height: auto;
                width: 150px;" valign="top">
                <asp:Label ID="Label11" runat="server" Text="Tel"></asp:Label>
            </td>
            <td style="border-width: thin; padding: 2px; border-style: solid; height: auto;
                width: 200px;">
                <asp:Label ID="Tel" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="border-width: thin; padding: 2px; border-style: solid; height: auto;
                width: 150px;" valign="top">
                <asp:Label ID="Label13" runat="server" Text="Mobile"></asp:Label>
            </td>
            <td style="border-width: thin; padding: 2px; border-style: solid; height: auto;
                width: 200px;">
                <asp:Label ID="Mobile" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 300px">
            </td>
        </tr>
    </table>
    <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
</asp:Content>
