<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Subscriber_Homepage.aspx.cs" Inherits="Login_Module_Subscriber_Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 21px;
        }
        .style3
        {
            text-align: center;
            color: #FFFFFF;
            background-color:#336699;
        }
        .style5
        {
            width: 100%;
            height: 50px;
        }
        .style8
        {
            background-color:#336699;
        margin-left: 0px;
    }
        .style11
        {
            background-color: #336699;
            height: 23px;
            text-align: center;
        }
        .style17
        {
            background-color: #336699;
        }
        .style19
        {
            height: 26px;
            text-align: center;
        }
        .style20
        {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="loginDisplay" align="center" bgcolor="#336699">
        <tr>
            <td class="style2">
                <asp:Panel ID="Panel1" runat="server" CssClass="style8" BackColor="#336699" 
                    BorderColor="#336699" ForeColor="#336699" Width="918px">
                    <table class="style5">
                        <tr>
                            <td align="center" bgcolor="#336699" class="style19">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" bgcolor="#336699" class="style20">
                                </td>
                        </tr>
                        <tr>
                            <td bgcolor="#336699" class="style19" align="justify">
                                <asp:Label ID="Label4" runat="server" 
                                    style="font-size: medium; font-weight: 700; color: #FFFFFF; text-align: center;" 
                                    Text="Subscriber Login" Width="295px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="justify" bgcolor="#336699" class="style19">
                                <asp:TextBox ID="snTxt" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="justify" bgcolor="#336699" class="style19">
                                <asp:TextBox ID="loginTxt" runat="server" BackColor="#FFFF99" 
                                    ForeColor="#333300" Height="40px" ontextchanged="TextBox1_TextChanged" 
                                    placeholder="Enter the Subscription ID" style="text-align: center" 
                                    Width="274px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" bgcolor="#336699" align="justify">
                                <asp:Button ID="Button2" runat="server" Height="20px" onclick="Button1_Click" 
                                    style="font-weight: 700" Text="Submit" Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="justify" bgcolor="#336699" class="style11">
                                <asp:Label ID="lblErrorMsg" runat="server" style="color: #000000"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style8">
                                <asp:LinkButton ID="LinkButton2" runat="server">Forgot/Misplace ID? Contact the provider.</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style17">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

