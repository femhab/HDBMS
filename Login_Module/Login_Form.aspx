<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login_Form.aspx.cs" Inherits="Login_Module_Login_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
        border: 1px solid #3333FF;
    }
    .style2
    {
        width: 100%;
    }
    .style6
    {
        text-align: center;
    }
    .style7
    {
        width: 463px;
    }
        .style8
        {
            width: 463px;
            height: 21px;
        }
        .style9
        {
            height: 21px;
        }
        .style10
        {
            background-color: #336699;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table bgcolor="#336699" class="style1">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label1" runat="server" 
                style="font-size: large; font-weight: 700; text-align: center; color: #FFFFFF; " 
                Text="LOGIN" Width="938px" CssClass="style10"></asp:Label>
            </td>
    </tr>
    <tr>
        <td class="style8">
            </td>
        <td class="style9">
            </td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Panel ID="Panel1" runat="server">
                <table class="style2">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" ForeColor="#336699" 
                                style="text-align: center; color: #FFFFFF; font-weight: 700; font-size: large; " 
                                Text="Login Details" Width="940px" CssClass="style10"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6" align="center">
                            <asp:TextBox ID="TextBox1" placeholder= "Enter your Username" runat="server" BackColor="#FFFF99" ForeColor="Black" 
                                style="text-align: center" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6" align="center">
                            <asp:TextBox ID="TextBox2" placeholder= "Enter your Password" runat="server" BackColor="#FFFF99" ForeColor="Black" 
                                style="text-align: center" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Button ID="Button1" runat="server" Height="20px" style="font-weight: 700" 
                                Text="Submit" Width="250px" onclick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:LinkButton ID="LinkButton1" runat="server" Width="250px">Forgot Password</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            </td>
        <td class="style9">
            </td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

