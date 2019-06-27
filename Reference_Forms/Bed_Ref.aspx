<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Bed_Ref.aspx.cs" Inherits="Reference_Forms_Bed_Ref" %>

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
            width: 84px;
        }
        .style4
        {
            width: 93px;
        }
        .style5
        {
            height: 21px;
            width: 93px;
        }
        .style6
        {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="2">
                    <asp:Label ID="lblSubscriberName" runat="server" 
                        style="color: #FF0000; text-align: center; font-weight: 700; font-size: x-large; background-color: #FFFFFF" 
                        Width="894px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" 
                    style="font-size: large; font-weight: 700; text-align: center; color: #FFFFFF; background-color: #4682B4" 
                    Text="BED REFERENCE FORM " Width="931px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server">
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
                                    <asp:Label ID="Label13" runat="server" Text="Username:"></asp:Label>
                                </td>
                                <td class="style2" colspan="2">
                                    <asp:TextBox ID="txtUsername" runat="server" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    <asp:Label ID="Label14" runat="server" Text="Password:"></asp:Label>
                                </td>
                                <td class="style3" colspan="2">
                                    <asp:TextBox ID="txtPassword" runat="server" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button5" runat="server" Text="Cancel" 
                    Width="66px" />
                                </td>
                                <td>
                                    <asp:Button ID="Button4" runat="server" Text="Login" 
                    Width="204px" onclick="Button4_Click" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:LinkButton ID="LinkButton1" runat="server">Forgot password?</asp:LinkButton>
                                    &nbsp;<asp:Label ID="lblErrormsg" runat="server"></asp:Label>
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
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel4" runat="server" Visible="False" Width="400px">
                    <table class="style1">
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label15" runat="server" 
                style="font-size: medium" Text="Section:" CssClass="style6"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="dropSections" runat="server" 
                Width="204px" DataSourceID="SqlDataSource1" DataTextField="DEPT_NAME" 
                                    DataValueField="DEPT_NAME">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:HDBMS %>" 
                                    SelectCommand="SELECT * FROM [DEPARMENT_TBL]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label16" runat="server" 
                style="font-size: medium" Text="Ward:" CssClass="style6"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtWard" runat="server" 
                Width="204px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label17" runat="server" 
                style="font-size: medium" Text="Room:" CssClass="style6"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtRoom" runat="server" 
                Width="204px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label18" runat="server" 
                style="font-size: medium" Text="Bed:" CssClass="style6"></asp:Label>
                            </td>
                            <td class="style2">
                                <asp:TextBox ID="txtBed" runat="server" 
                Width="204px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label19" runat="server" CssClass="style6" 
                                    style="font-size: medium" Text="Status:"></asp:Label>
                            </td>
                            <td class="style2">
                                <asp:DropDownList ID="dropStatus" runat="server" Width="204px">
                                    <asp:ListItem>True</asp:ListItem>
                                    <asp:ListItem>False</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button6" runat="server" 
                style="font-weight: 700" Text="Add" onclick="Button6_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="lbl" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
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
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

