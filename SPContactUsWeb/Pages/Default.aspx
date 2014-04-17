<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SPContactUsWeb.Pages.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="0" style="width: 409px">
                <tr>
                    <td>
                        <asp:Label ID="lblName" runat="server" Text="Name*"></asp:Label><br />
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" ValidationGroup="contact" Width="457px"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="txtNameRequiredValidator" runat="server" ErrorMessage="*" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSubject" runat="server" Text="Subject*"></asp:Label><br />
                    </td>
                    <td>
                        <asp:TextBox ID="txtSubject" runat="server" Width="459px"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="txtSubjectRequiredValidator" runat="server" ErrorMessage="*" ControlToValidate="txtSubject"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text="Email*"></asp:Label><br />
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Width="460px"></asp:TextBox><br />
                        <asp:RegularExpressionValidator ID="txtEmailRegExValidator" runat="server" ControlToValidate="txtEmail" ValidationExpression=".*@.*\..*" ErrorMessage="*Invalid Email address." Display="dynamic">
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="txtEmailRequiredValidator" runat="server" ErrorMessage="*" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td valign="top">
                        <asp:Label ID="lblBody" runat="server" Text="Body*"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Height="143px" Width="461px"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="txtBodyRequiredValidator" runat="server" ErrorMessage="*" ControlToValidate="txtBody"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblDisplay" runat="server" Text="" Visible="false"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:FileUpload ID="FileUploadControl" runat="server" Width="464px" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="btnSend_Click" Text="Send" Width="100px" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
