<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CobcYouth._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <%-- <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Modify this template to jump-start your ASP.NET application.</h2>
            </hgroup>
            <p>
                To learn more about ASP.NET, visit <a href="http://asp.net" title="ASP.NET Website">http://asp.net</a>.
                The page features <mark>videos, tutorials, and samples</mark> to help you get the most from ASP.NET.
                If you have any questions about ASP.NET visit
                <a href="http://forums.asp.net/18.aspx" title="ASP.NET Forum">our forums</a>.
            </p>
        </div>--%>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <link href="CSS/Table.css" rel="stylesheet" />
    <script src="Scripts/Javascript/Default.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <div id="Div_Info_close" class="divclass_close">
        <table id="TableClose">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Account Information" Font-Size="Small"
                        Font-Bold="True" ForeColor="Black" Font-Underline="False" />
                </td>
                <td>
                    <img src="Images/button/btnopen.jpg" class="btnclose" onclick="OpenInfoDiv()" />
                </td>
            </tr>
        </table>
    </div>

    <div id="Div_Info" class="divclass_close">
        <img src="Images/button/btnclose.jpg" class="btnclose" onclick="CloseInfoDiv()" />
        <table id="tbinfo">
            <tr>
                <td colspan="2">
                    <asp:Label ID="accInfo" runat="server" Text="Account Information:" Font-Size="Medium"
                        Font-Bold="True" ForeColor="Black" Font-Underline="True" />
                </td>
            </tr>
            <tr>
                <td>Login Account:
                </td>
                <td>
                    <asp:Label ID="loginName" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Login Time:
                </td>
                <td>
                    <asp:Label ID="loginTime" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Login Account Group:
                </td>
                <td>
                    <asp:Label ID="loginGroup" runat="server" Text=""></asp:Label>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:Label ID="browserInfo" runat="server" Text="Browser Information:" Font-Size="Medium"
                        Font-Bold="True" ForeColor="Black" Font-Underline="True" />
                </td>
            </tr>
            <tr>
                <td>User Browser:
                </td>
                <td>
                    <asp:Label ID="userBrowser" runat="server" Text="" />
                </td>
            </tr>
            <tr>
                <td>Browser Version:
                </td>
                <td>
                    <asp:Label ID="browserVersion" runat="server" Text="" />
                </td>
            </tr>
        </table>
    </div>
    <br />


    <div id="Div_AppInfo_close" class="divclass_close">
        <table id="TableClose_app">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Application Information" Font-Size="Small"
                        Font-Bold="True" ForeColor="Black" Font-Underline="False" />
                </td>
                <td>
                    <img src="Images/button/btnopen.jpg" class="btnclose" onclick="OpenAppInfoDiv()" />
                </td>
            </tr>
        </table>
    </div>

    <div id="Div_AppInfo" class="divclass_close">
        <img src="Images/button/btnclose.jpg" class="btnclose" onclick="CloseAppInfoDiv()" />
        <table id="tbAppinfo" class="BlueGrayHtmlTable">
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblFTS" runat="server" Text="Application Information" SkinID="DefaultLabel" />
                </td>
            </tr>
            <tr>
                <td width="100px">
                    <asp:Label ID="lblDescription" runat="server" Text="Description :" SkinID="DefaultLabel" />
                </td>
                <td>
                    <asp:Label ID="lblDescriptionValue" runat="server" SkinID="DefaultLabel" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCompany" runat="server" Text="Company :" SkinID="DefaultLabel" />
                </td>
                <td>
                    <asp:Label ID="lblCompanyValue" runat="server" SkinID="DefaultLabel" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCopyright" runat="server" Text="Copyright :" SkinID="DefaultLabel" />
                </td>
                <td>
                    <asp:Label ID="lblCopyrightValue" runat="server" SkinID="DefaultLabel" />
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="lblVersion" runat="server" Text="Version :" SkinID="DefaultLabel" />
                </td>
                <td>
                    <asp:Label ID="lblVersionValue" runat="server" SkinID="DefaultLabel" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblLastUpdated" runat="server" Text="Last Builded :" SkinID="DefaultLabel" />
                </td>
                <td>
                    <asp:Label ID="lblLastUpdatedValue" runat="server" SkinID="DefaultLabel" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="background-color: #003366"></td>
            </tr>
        </table>
    </div>
    <%--    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Getting Started</h5>
            ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245146">Learn more…</a>
        </li>
        <li class="two">
            <h5>Add NuGet packages and jump-start your coding</h5>
            NuGet makes it easy to install and update free libraries and tools.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245147">Learn more…</a>
        </li>
        <li class="three">
            <h5>Find Web Hosting</h5>
            You can easily find a web hosting company that offers the right mix of features and price for your applications.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245143">Learn more…</a>
        </li>
    </ol>--%>
</asp:Content>
