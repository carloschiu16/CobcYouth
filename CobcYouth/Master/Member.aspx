<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Member.aspx.cs" Inherits="CobcYouth.Master.Member" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../CSS/Table.css" rel="stylesheet" /> 
    <asp:GridView ID="GridViewMember" runat="server" CssClass="CSSTableGenerator" ></asp:GridView>
</asp:Content>

