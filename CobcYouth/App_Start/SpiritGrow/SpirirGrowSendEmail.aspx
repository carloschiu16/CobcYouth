<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SpirirGrowSendEmail.aspx.cs" Inherits="CobcYouth.SpiritGrow.SpirirGrowSendEmail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 80px;
        }

        .auto-style2 {
            width: 404px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">



    <table style="width: 100%">
        <tr>
            <td class="auto-style1">From: </td>
            <td class="auto-style2">cobcyouth.spiritual@gmail.com</td>

        </tr>
        <tr>
            <td class="auto-style1">To:</td>
            <td class="auto-style2">
                <asp:TextBox ID="EmailTo" runat="server" Height="16px" Width="388px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="LabelTo" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style1">Title:</td>
            <td class="auto-style2">
                <asp:TextBox ID="EmailTitle" runat="server" Width="382px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="LabelTitle" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

    <asp:TextBox ID="EmailContent" runat="server" TextMode="MultiLine" Height="118px" Width="529px"></asp:TextBox>

    <br />
    <asp:Button ID="btnSend" runat="server" Font-Size="Small" Height="30px" OnClick="btnSend_Click" Text="Send Email" Width="120px" />
</asp:Content>
