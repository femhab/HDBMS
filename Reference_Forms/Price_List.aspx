<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Price_List.aspx.cs" Inherits="Reference_Forms_Price_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 35%;
        }
        .style2
        {
            height: 21px;
        }
        .style3
        {
            height: 26px;
        }
        .style4
        {
            height: 26px;
            width: 75px;
        }
        .style5
        {
            height: 21px;
            width: 75px;
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
                    style="font-size: large; font-weight: 700; text-align: center; color: #FFFFFF; background-color: #0000FF" 
                    Text="PRICE LIST" Width="927px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel2" runat="server">
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
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button5" runat="server" Text="Cancel" Width="66px" />
                                </td>
                                <td>
                                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Login" 
                                        Width="204px" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:LinkButton ID="LinkButton1" runat="server">Forgot password?</asp:LinkButton>
                                    &nbsp;<asp:Label ID="lblErrormsg" runat="server" Text="Label"></asp:Label>
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
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server" Visible="False" Width="400px">
                    <table class="style1">
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label15" runat="server" style="font-size: medium" 
                                    Text="Department:"></asp:Label>
                            </td>
                            <td class="style3">
                                <asp:DropDownList ID="dropDept" runat="server" Width="200px" 
                                    DataSourceID="SqlDataSource1" DataTextField="DEPT_NAME" 
                                    DataValueField="DEPT_NAME">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:HDBMS %>" 
                                    SelectCommand="SELECT * FROM [DEPARMENT_TBL]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label2" runat="server" style="font-size: medium" 
                                    Text="Services:"></asp:Label>
                            </td>
                            <td class="style3">
                                <asp:TextBox ID="txtServices" runat="server" Width="204px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label3" runat="server" style="font-size: medium" Text="Price:"></asp:Label>
                            </td>
                            <td class="style2">
                                <asp:TextBox ID="txtPrice" runat="server" Width="204px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;</td>
                            <td class="style2">
                                <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="Add" 
                                    onclick="Button1_Click" />
                                <asp:Button ID="Button6" runat="server" style="font-weight: 700" 
                                    Text="Update" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;</td>
                            <td class="style2">
                                <asp:Label ID="lbl" runat="server"></asp:Label>
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
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
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
    </table>
</asp:Content>

