<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Subscriber_Homepage.aspx.cs" Inherits="Login_Module_Subscriber_Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 21px;
        }
        .style9
        {
            text-align: center;
            color: #FFFFFF;
            background-color: #4682B4;
            height: 22px;
        }
        .style12
        {
            background-color: #4682B4;
        }
        .style13
        {
            text-align: center;
            color: #FFFFFF;
            background-color: #336699;
            height: 23px;
        }
        .style14
        {
            width: 444px;
            background-color: #4682B4;
            height: 23px;
        }
        .style15
        {
            width: 444px;
            background-color: #4682B4;
        }
        .style16
        {
            text-align: center;
            color: #FFFFFF;
            background-color: #4682B4;
        }
        .style18
        {
            background-color:#4682B4;
            height: 29px;
        }
        .style19
        {
            width: 100%;
        }
        .style21
        {
            text-decoration: none;
            color: #FFFF99;
        }
        .style23
        {
            height: 23px;
        }
        .style24
        {
            text-align: center;
            color: #FFFFFF;
            background-color: #4682B4;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="loginDisplay" align="center" bgcolor="SteelBlue">
        <tr>
            <td class="style2" colspan="2">
            <asp:Label ID="Label1" runat="server" 
                style="font-size: large; font-weight: 700; text-align: center; color: #FFFFFF; " 
                Text="HOMEPAGE" Width="938px" BorderColor="#003366" CssClass="style12"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style9" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13" colspan="2">
                <asp:Panel ID="Panel1" runat="server" BackColor="SteelBlue">
                    <table class="style19">
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style21" 
                                    onclick="LinkButton1_Click">Signup a staff?</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="style21" 
                                    onclick="LinkButton2_Click">Signup a Patient?</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton3" runat="server" CssClass="style21">Pay roll management?</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td class="style23">
                                <asp:LinkButton ID="LinkButton4" runat="server" CssClass="style21">Duty roaster management?</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton6" runat="server" CssClass="style21">Duty roaster management?</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton5" runat="server" CssClass="style21">Block a staff?</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                </td>
        </tr>
        <tr>
            <td colspan="2" class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style24">
                </td>
            <td class="style14">
                </td>
        </tr>
        <tr>
            <td class="style16" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr bgcolor="#3333FF">
            <td class="style24">
                </td>
            <td class="style14">
                </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

