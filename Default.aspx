<!--Summary:
    This website uses the Automart database and the ADO.Net Data Entities component to first display a list of locations and services from the automart database on Default.aspx. After clicking register, the user is redirected to Default2.apx where they enter their registration information and click submit. The entered information is then validated and added to the Automart database and the user is redirected to a thank you message on Default3.aspx.

    Sonya Ortis, 5/26/13
-->

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <!-- This page uses LINQ query syntax to display data from the automart database -->
        <h1>AutoMart</h1>
        <h2>Locations</h2>
        <asp:DataList ID="LocationsDL" runat="server">
            <ItemTemplate>
                <strong><%#Eval("LocationName") %>: </strong><%#Eval("LocationAddress") %>, <%#Eval("LocationCity") %>, <%#Eval("LocationState") %> <%#Eval("LocationZip") %><br />
            </ItemTemplate>
        </asp:DataList>
        <h2>Services</h2>
        <asp:DataList ID="ServicesDL" runat="server">
            <ItemTemplate>
                <strong><%#Eval("ServiceName") %>: </strong><%#Eval("ServicePrice") %><br />
            </ItemTemplate>
        </asp:DataList>

        <p><asp:Button ID="RegisterBtn" runat="server" Text="Register" OnClick="RegisterBtn_Click" /></p>
    </div>
    </form>
</body>
</html>
