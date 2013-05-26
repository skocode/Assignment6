<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <!-- Displays a registration form that requests the user's registration information-->
        <h1>AutoMart</h1>
        <h2>Register With AutoMart</h2>
        <table>
            <tr>
                <td>First Name:</td>
                <td><asp:TextBox ID="FirstNameTxt" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="FNErrorLbl" runat="server" Text=""></asp:Label></td>
            </tr>
             <tr>
                <td>Last Name:</td>
                <td><asp:TextBox ID="LastNameTxt" runat="server"></asp:TextBox></td>
               <td><asp:Label ID="LNErrorLbl" runat="server" Text=""></asp:Label></td>
            </tr>
             <tr>
                <td>Email:</td>
                <td><asp:TextBox ID="EmailTxt" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="EMErrorLbl" runat="server" Text=""></asp:Label></td>                
            </tr>
             <tr>
                <td>License Plate Number:</td>
                <td><asp:TextBox ID="LicenseTxt" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="LPErrorLbl" runat="server" Text=""></asp:Label></td>
            </tr>
             <tr>
                <td>Vehicle Make:</td>
                <td><asp:TextBox ID="MakeTxt" runat="server"></asp:TextBox></td>
                <td></td>
            </tr>
             <tr>
                <td>Vehicle Year:</td>
                <td><asp:TextBox ID="YearTxt" runat="server"></asp:TextBox></td>
                <td></td>
            </tr>
             <tr>
                <td>Enter Password:</td>
                <td><asp:TextBox ID="PasswordTxt" runat="server" TextMode="Password"></asp:TextBox></td>
                <td><asp:Label ID="PWErrorLbl" runat="server" Text=""></asp:Label></td>
            </tr>
             <tr>
                <td>Confirm Password:</td>
                <td><asp:TextBox ID="PasswordConfirmTxt" runat="server" TextMode="Password"></asp:TextBox></td>
                <td><asp:Label ID="PWCErrorLbl" runat="server" Text=""></asp:Label></td>
            </tr>
             <tr>
                <td><asp:Button ID="SubmitBtn" runat="server" Text="Submit" OnClick="SubmitBtn_Click" /></td>
                <td><asp:Label ID="ErrorLbl" runat="server" Text=""></asp:Label></td>
                <td></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
