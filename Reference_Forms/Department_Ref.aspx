<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Department_Ref.aspx.cs" Inherits="Reference_Forms_Department_Ref" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 21px;
        }
        .style3
        {
            height: 26px;
        }
        .style8
        {
            height: 26px;
            width: 152px;
        }
        .style9
        {
            height: 21px;
            width: 152px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" 
                    style="font-size: large; font-weight: 700; text-align: center; color: #FFFFFF; background-color: #4682B4" 
                    Text="DEPARTMENT REFERENCE FORM" Width="927px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                    <asp:Panel ID="Panel3" runat="server" Width="460px">
                        <table class="style1">
                            <tr>
                                <td colspan="3">
                                    <asp:Label ID="Label12" runat="server" 
                    style="font-size: medium; font-weight: 700; text-align: center" 
                    Text="LOGIN PANEL" Width="458px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label13" runat="server" Text="User ID:"></asp:Label>
                                </td>
                                <td class="style2" colspan="2">
                                    <asp:TextBox ID="TextBox10" runat="server" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    <asp:Label ID="Label14" runat="server" Text="Password:"></asp:Label>
                                </td>
                                <td class="style3" colspan="2">
                                    <asp:TextBox ID="TextBox11" runat="server" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button5" runat="server" Text="Cancel" 
                    Width="66px" />
                                </td>
                                <td>
                                    <asp:Button ID="Button4" runat="server" Text="Login" 
                    Width="204px" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td colspan="2">
                                    <asp:LinkButton ID="LinkButton1" runat="server">Forgot password?</asp:LinkButton>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel4" runat="server">
                    <asp:Panel ID="Panel1" runat="server" Width="400px">
                        <table class="style1">
                            <tr>
                                <td class="style8">
                                    <asp:Label ID="Label15" runat="server" style="font-size: medium" 
                                    Text="Department Name:"></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:TextBox ID="txtDeptName" runat="server" Width="204px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style8">
                                    <asp:Label ID="Label2" runat="server" 
                                    style="font-size: medium" Text="Assign ID:"></asp:Label>
                                </td>
                                <td class="style3">
                                    <asp:TextBox ID="txtDeptID" runat="server" Width="204px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    &nbsp;</td>
                                <td class="style2">
                                    <asp:Button ID="Button7" runat="server" style="font-weight: 700" Text="Add" 
                                        Width="200px" onclick="Button7_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                    &nbsp;</td>
                                <td class="style2">
                                    <asp:Button ID="Button6" runat="server" 
                                    Text="Update" Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                </td>
                                <td class="style2">
                                    <asp:Label ID="lbl" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

