<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SingleMember.aspx.cs" Inherits="CobcYouth.Master.SingleMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../CSS/Table.css" rel="stylesheet" />
    <table class="BlueGrayHtmlTable">
        <tr>
            <td colspan="4">基本資料</td>
        </tr>
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
            <td style="width: 50px">
                <asp:Label ID="Label5" runat="server" Text="團契"></asp:Label></td>
            <td style="width: 120px">
                <asp:Label ID="Fellowship" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td colspan="4" style="background-color: #003366; text-align: center; font-size: 16px; font-family: Arial; font-weight: bold; color: #ffffff;">聯絡資料</td>
        </tr>

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
</asp:Content>
