<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Country_Ref_Form.aspx.cs" Inherits="Reference_Forms_Country_Ref_Form" %>

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
        .style4
        {
            width: 102%;
            height: 155px;
        }
        .style10
        {
            height: 30px;
        }
        .style13
        {
            height: 26px;
        }
        .style14
        {
            width: 103px;
            height: 26px;
            text-align: left;
        }
        .style15
        {
            width: 103px;
            text-align: left;
        }
        .style16
        {
            width: 103px;
            height: 30px;
            text-align: left;
        }
        .style17
        {
            width: 103px;
            height: 21px;
        }
        .style18
        {
            width: 99px;
            height: 26px;
            text-align: left;
        }
        .style19
        {
            width: 99px;
            text-align: left;
        }
        .style20
        {
            width: 99px;
            height: 30px;
            text-align: left;
        }
        .style21
        {
            width: 99px;
            height: 21px;
        }
        .style22
        {
            width: 98px;
        }
        .style23
        {
            width: 98px;
            height: 26px;
            text-align: left;
        }
        .style24
        {
            width: 98px;
            height: 21px;
            text-align: left;
        }
        .style25
        {
            width: 98px;
            height: 30px;
            text-align: left;
        }
        .style26
        {
            text-align: left;
        }
        .style27
        {
            height: 21px;
            text-align: left;
        }
        .style28
        {
            width: 98px;
            text-align: left;
        }
        .style29
        {
            width: 8px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server" style="text-align: center" Width="460px">
                    <table class="style1">
                        <tr>
                            <td colspan="3">
                                <asp:Label ID="Label12" runat="server" 
                                    style="font-size: medium; font-weight: 700; text-align: center" 
                                    Text="LOGIN PANEL" Width="458px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style27">
                                <asp:Label ID="Label13" runat="server" Text="User ID:"></asp:Label>
                            </td>
                            <td class="style2" colspan="2">
                                <asp:TextBox ID="TextBox10" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style26">
                                <asp:Label ID="Label14" runat="server" Text="Password:"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="TextBox11" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left">
                                <asp:Button ID="Button5" runat="server" Text="Cancel" Width="66px" />
                            </td>
                            <td>
                                <asp:Button ID="Button4" runat="server" Text="Login" Width="204px" />
                            </td>
                            <td class="style29">
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
            <td class="style2">
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel4" runat="server" style="text-align: center" Width="462px">
                    <table class="style4">
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label23" runat="server" 
                                    style="font-size: large; font-weight: 700; text-align: center; color: #FFFFFF; background-color: #4682B4; font-family: 'Times New Roman', Times, serif;" 
                                    Text="State Reference Form" Width="456px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                <asp:Label ID="Label24" runat="server" style="font-size: medium" 
                                    Text="Country:"></asp:Label>
                            </td>
                            <td class="style13">
                                <asp:TextBox ID="TextBox17" runat="server" Width="204px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style15">
                                <asp:Label ID="Label25" runat="server" style="font-size: medium" 
                                    Text="Country Code:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox16" runat="server" Width="204px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <asp:Button ID="Button18" runat="server" Text="Clear" Width="99px" />
                            </td>
                            <td class="style10">
                                <asp:Button ID="Button19" runat="server" CssClass="bold" Text="Add Country" 
                                    width="164px" />
                                <asp:Button ID="Button20" runat="server" Text="Next" Width="39px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style17">
                            </td>
                            <td class="style2">
                            </td>
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
                <asp:Panel ID="Panel3" runat="server" style="text-align: center" Width="467px">
                    <table class="style4">
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label16" runat="server" 
                                    style="font-size: large; font-weight: 700; text-align: center; color: #FFFFFF; background-color: #4682B4; font-family: 'Times New Roman', Times, serif;" 
                                    Text="State Reference Form" Width="465px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style18">
                                <asp:Label ID="Label17" runat="server" style="font-size: medium" 
                                    Text="Country:"></asp:Label>
                            </td>
                            <td class="style13">
                                <asp:DropDownList ID="DropDownList3" runat="server" Width="204px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style19">
                                <asp:Label ID="Label18" runat="server" style="font-size: medium" Text="State:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox15" runat="server" Width="204px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                <asp:Button ID="Button8" runat="server" Text="Clear" Width="90px" />
                            </td>
                            <td class="style10">
                                <asp:Button ID="Button14" runat="server" CssClass="bold" Text="Add State" 
                                    width="164px" />
                                <asp:Button ID="Button15" runat="server" Text="Next" Width="39px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style21">
                            </td>
                            <td class="style2">
                            </td>
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
                <asp:Panel ID="Panel2" runat="server" style="text-align: center" Width="466px">
                    <table class="style4">
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label1" runat="server" 
                                    style="font-size: large; font-weight: 700; text-align: center; color: #FFFFFF; background-color: #4682B4; font-family: 'Times New Roman', Times, serif;" 
                                    Text="LGA Reference Form" Width="465px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style28">
                                <asp:Label ID="Label2" runat="server" style="font-size: medium" Text="Country:"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="204px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style23">
                                <asp:Label ID="Label15" runat="server" style="font-size: medium" Text="State:"></asp:Label>
                            </td>
                            <td class="style13">
                                <asp:DropDownList ID="DropDownList2" runat="server" Width="204px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style24">
                                <asp:Label ID="Label22" runat="server" style="font-size: medium" Text="LGA:"></asp:Label>
                            </td>
                            <td class="style2">
                                <asp:TextBox ID="TextBox13" runat="server" height="22px" width="204px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style25">
                                <asp:Button ID="Button6" runat="server" Text="Clear" Width="87px" />
                            </td>
                            <td class="style10">
                                <asp:Button ID="Button16" runat="server" CssClass="bold" Text="Add LGA" 
                                    width="164px" />
                                <asp:Button ID="Button17" runat="server" Text="Back" Width="39px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style2">
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

