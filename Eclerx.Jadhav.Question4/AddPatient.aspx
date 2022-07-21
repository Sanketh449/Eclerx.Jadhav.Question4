<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPatient.aspx.cs" Inherits="Eclerx.Jadhav.Question4.AddPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Add Patient Details</h3>
            <table>
                <tr>
                    <td>
                        <label>Patient Id</label></td>
                    <td>
                        <asp:TextBox ID="TxtPatientId" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter Patient Id" ControlToValidate="TxtPatientId" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Patient Name</label></td>
                    <td>
                        <asp:TextBox ID="TxtPatientName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the Patient name" ControlToValidate="TxtPatientName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Gender</label></td>
                    <td>
                        <asp:DropDownList ID="DdlGender" runat="server">
                            <asp:ListItem Value="M">Male</asp:ListItem>
                            <asp:ListItem Value="F">Female</asp:ListItem>
                            <asp:ListItem Value="O">Others</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Select an Option" ControlToValidate="DdlGender" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        <label>Age</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtAge" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Age" ControlToValidate="TxtAge" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </td>

                </tr>
                <tr>
                    <td>
                        <label>Contact Number</label></td>
                    <td>
                        <asp:TextBox ID="TxtContactNumber" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Contact Number" ControlToValidate="TxtContactNumber" ForeColor="Red"></asp:RequiredFieldValidator>
                        <!--<asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator"></asp:CustomValidator>-->
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Doctor Name</label></td>
                    <td>
                        <asp:TextBox ID="TxtDoctorName" runat="server"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please Enter Doctor Name" ControlToValidate="TxtDoctorName" ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="BtnAdd" runat="server" Text="Add Patient" OnClick="BtnAdd_Click" />
                    </td>
                </tr>
                <tr><td>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td></tr>

            </table>
        </div>
    </form>
</body>
</html>
