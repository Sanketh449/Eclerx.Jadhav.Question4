<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchPatient.aspx.cs" Inherits="Eclerx.Jadhav.Question4.SearchPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblSearch" runat="server">Search Doctor Name :</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtSearchDoctor" runat="server"></asp:TextBox>
                       
                        <asp:Button Text="Search" runat="server" ID="BtnView" OnClick="BtnSearch_Click" />
                    </td>
                </tr>
            </table>
            <asp:GridView ID="GridDetails" runat="server" AllowPaging="True" AutoGenerateColumns="False">
            </asp:GridView>
            
        </div>
    </form>
</body>
</html>
