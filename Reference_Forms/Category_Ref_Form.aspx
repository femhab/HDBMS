<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Category_Ref_Form.aspx.cs" Inherits="Reference_Forms_Category_Ref_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 48%;
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
            width: 100%;
        }
        .style5
        {
            width: 188px;
        }
        .style7
        {
            width: 186px;
        }
        .style8
        {
            width: 192px;
        }
        .style9
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
                                <asp:Label ID="Label24" runat="server" 
                                    style="font-size: large; font-weight: 700; text-align: center; color: #FFFFFF; background-color: #4682B4; font-family: 'Times New Roman', Times, serif;" 
                                    Text="Category Form" Width="891px"></asp:Label>
                            </td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                <asp:Panel ID="Panel1" runat="server" Width="460px">
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
                            <td>
                                <asp:Label ID="Label14" runat="server" Text="Password:"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:TextBox ID="txtPassword" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button5" runat="server" Text="Cancel" Width="66px" />
                            </td>
                            <td>
                                <asp:Button ID="Button4" runat="server" Text="Login" Width="204px" 
                                    onclick="Button4_Click" />
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
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                <asp:Panel ID="Panel2" runat="server" Visible="False" Width="400px">
                    <table class="style4">
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label1" runat="server" 
                                    style="font-size: large; font-weight: 700; text-align: center; color: #FFFFFF; background-color: #4682B4; font-family: 'Times New Roman', Times, serif;" 
                                    Text="Category " Width="120px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label2" runat="server" style="font-size: medium" 
                                    Text="Category Name:" CssClass="style9"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtCategory" runat="server" Width="204px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Button ID="Button6" runat="server" Text="Clear" />
                            </td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Add Category" width="204px" 
                                    onclick="Button1_Click" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel3" runat="server" Visible="False" Width="400px">
                    <table class="style4">
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label16" runat="server" 
                                    style="font-size: large; font-weight: 700; text-align: center; color: #FFFFFF; background-color: #4682B4; font-family: 'Times New Roman', Times, serif;" 
                                    Text="Sub Category" Width="120px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                <asp:Label ID="Label17" runat="server" style="font-size: medium" 
                                    Text="Category Name:" CssClass="style9"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="dropCategory" runat="server" height="22px" Width="204px" 
                                    DataSourceID="SqlDataSource1" DataTextField="CATEGORY_NAME" 
                                    DataValueField="CATEGORY_NAME">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:HDBMS %>" 
                                    SelectCommand="SELECT * FROM [CATEGORY_TBL]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                <asp:Label ID="Label5" runat="server" style="font-size: medium" 
                                    Text="Sub Category Name:" CssClass="style9"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtSubCategory" runat="server" Width="204px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                <asp:Button ID="Button9" runat="server" Text="Clear" />
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" Text="Add Sub Category" width="204px" 
                                    onclick="Button2_Click" />
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
                <asp:Panel ID="Panel4" runat="server" Visible="False" Width="400px">
                    <table class="style4">
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label19" runat="server" 
                                    style="font-size: large; font-weight: 700; text-align: center; color: #FFFFFF; background-color: #4682B4; font-family: 'Times New Roman', Times, serif;" 
                                    Text="Sub Sub Category " Width="160px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label20" runat="server" style="font-size: medium" 
                                    Text="Category Name:" CssClass="style9"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="dropCategory2" runat="server" height="22px" Width="204px" 
                                    DataSourceID="SqlDataSource3" DataTextField="CATEGORY_NAME" 
                                    DataValueField="CATEGORY_NAME" AutoPostBack="True" onselectedindexchanged="dropCategory2_SelectedIndexChanged1" 
                                    >
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:HDBMS %>" 
                                    SelectCommand="SELECT * FROM [CATEGORY_SUB_TBL]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label23" runat="server" style="font-size: medium" 
                                    Text="Sub Category Name:" CssClass="style9"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="dropSubCategory" runat="server" Width="204px" 
                                    AutoPostBack="True" 
                                    onselectedindexchanged="dropSubCategory_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label11" runat="server" style="font-size: medium" 
                                    Text="Sub  Sub Category Name:" CssClass="style9"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtSubSubCategory" runat="server" Width="204px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Button ID="Button10" runat="server" Text="Clear" />
                            </td>
                            <td>
                                <asp:Button ID="Button3" runat="server" Text="Add Sub Sub Category" 
                                    width="204px" onclick="Button3_Click" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="lbl" runat="server"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>

