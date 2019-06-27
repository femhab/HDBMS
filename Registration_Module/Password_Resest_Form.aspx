<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Password_Resest_Form.aspx.cs" Inherits="Registration_Module_Password_Resest_Form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 59%;
        }
        .style2
        {
            height: 23px;
        }
        .style4
        {
            height: 23px;
            width: 235px;
            text-align: left;
        }
        .style6
        {
            width: 235px;
            text-align: left;
        }
        .style7
        {
            width: 235px;
            height: 26px;
            text-align: left;
        }
        .style8
        {
            height: 26px;
        }
        .style9
        {
            width: 235px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td align="center">
                    <asp:Panel ID="Panel1" runat="server" Width="420px">
                        <table class="style1">
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="Label1" runat="server" 
                                        style="font-weight: 700; font-family: 'Times New Roman', Times, serif; color: #FFFFFF; text-align: center; font-size: large; background-color: #0000FF" 
                                        Text="Password Reset Form" Width="361px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    <asp:Label ID="Label2" runat="server" 
                                        style="font-family: Arial, Helvetica, sans-serif" Text="Staff ID:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True" Width="158px"></asp:TextBox>
                                    <asp:Button ID="Button3" runat="server" Height="22px" Text="Search" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    <asp:Label ID="Label3" runat="server" 
                                        style="font-family: Arial, Helvetica, sans-serif" Text="Security Question:"></asp:Label>
                                </td>
                                <td class="style8">
                                    <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" Width="224px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    <asp:Label ID="Label4" runat="server" 
                                        style="font-family: Arial, Helvetica, sans-serif" Text="Security Answer:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" width="224px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    <asp:Label ID="Label5" runat="server" 
                                        style="font-family: Arial, Helvetica, sans-serif" Text="New Password:"></asp:Label>
                                </td>
                                <td class="style2">
                                    <asp:TextBox ID="TextBox4" runat="server" width="224px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    <asp:Label ID="Label6" runat="server" 
                                        style="font-family: Arial, Helvetica, sans-serif" Text="Re-type Password:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server" width="224px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    <asp:Button ID="Button1" runat="server" Text="Cancel" Width="73px" />
                                </td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" style="font-weight: 700" Text="Reset" 
                                        width="224px" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
