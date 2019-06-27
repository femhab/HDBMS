<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Login_Module_Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td align="center">
                <asp:Label ID="Label1" runat="server" 
                    style="font-weight: 700; font-size: large; text-align: center" Text="HOMEPAGE"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" BackColor="Silver">
                    <table class="style1">
                        <tr>
                            <td align="center">
                                <asp:Label ID="Label2" runat="server" 
                                    style="font-weight: 700; font-size: medium" Text="Login"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style2">
                                <asp:TextBox ID="txtSN" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:TextBox ID="txtSubscriberID" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Label ID="lblErrorMsg" runat="server" style="color: #000000"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:RadioButton ID="radStaff" runat="server" GroupName = "GroupOne" 
                                    Text="staff" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:RadioButton ID="radAdmin" runat="server" Text="admin" GroupName = "GroupOne" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

