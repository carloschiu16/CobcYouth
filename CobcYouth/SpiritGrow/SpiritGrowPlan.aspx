<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" EnableEventValidation="false"
    CodeBehind="SpiritGrowPlan.aspx.cs" Inherits="CobcYouth.SpiritGrow.SpiritGrowPlan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <link href="../CSS/Table.css" rel="stylesheet" />

    <table style="width: 100%;">
        <tr>
            <td style="width: 120px">請選擇團契:</td>
            <td>
                <asp:DropDownList ID="dpFellowship" runat="server"></asp:DropDownList></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="BtnSearch" runat="server" Text="查詢" OnClick="BtnSearch_Click" /></td>
            <td>&nbsp;</td>
        </tr>
    </table>


    <div id="Div_GridView" class="divclass_close_0">
        <img src="../Images/button/btnclose.jpg" class="btnclose" onclick="ReSetsize()" />
        <asp:GridView ID="GridViewPlan" runat="server" CssClass="CSSTableGenerator" OnRowDataBound="GridViewPlan_RowDataBound" OnSelectedIndexChanged="OnSelectedIndexChanged"></asp:GridView>
    </div>
    <script src="../Scripts/Javascript/DivRelated.js"></script>

</asp:Content>
