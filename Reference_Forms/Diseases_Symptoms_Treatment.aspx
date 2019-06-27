<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Diseases_Symptoms_Treatment.aspx.cs" Inherits="Reference_Forms_Diseases_Symptoms_Treatment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 43%;
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
            height: 21px;
            width: 84px;
        }
        .style5
        {
            width: 84px;
            height: 26px;
        }
        .style6
        {
            height: 26px;
        }
        .style7
        {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style7" colspan="2">
                    <asp:Label ID="lblSubscriberName0" runat="server" 
                        style="color: #FF0000; text-align: center; font-weight: 700; font-size: x-large; background-color: #FFFFFF" 
                        Width="894px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7" colspan="2">
                <asp:Label ID="Label78" runat="server" 
                    style="font-size: medium; text-align: center; font-weight: 700; color: #FFFFFF; background-color: #4682B4" 
                    Text="DISEASE REFERENCE FORM" Width="932px"></asp:Label>
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
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server" Visible="False" Width="400px">
                    <table class="style1">
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label79" runat="server" style="font-size: medium" 
                                    Text="Disease:" Width="80px"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:TextBox ID="diseasesTxt" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <asp:Label ID="Label83" runat="server" style="font-size: medium" 
                                    Text="Microbes:" Width="90px"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="microbesTxt" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label82" runat="server" style="font-size: medium" Text="Causes:" 
                                    Width="90px"></asp:Label>
                            </td>
                            <td class="style2">
                                <asp:TextBox ID="causesTxt" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label80" runat="server" style="font-size: medium" 
                                    Text="Symptoms:" Width="90px"></asp:Label>
                            </td>
                            <td class="style2">
                                <asp:TextBox ID="symptomsTxt" runat="server" Height="50px" Width="200px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label81" runat="server" style="font-size: medium" 
                                    Text="Treatment:" Width="80px"></asp:Label>
                            </td>
                            <td class="style2">
                                <asp:TextBox ID="treatmentTxt" runat="server" Height="50px" Width="200px" 
                                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style2">
                                <asp:Label ID="lblMessage2" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style4">
                                &nbsp;</td>
                            <td class="style2">
                                <asp:Button ID="Button3" runat="server" style="font-weight: 700" Text="Add" 
                                    onclick="Button3_Click" />
                                <asp:Button ID="Button6" runat="server" style="font-weight: 700" 
                                    Text="Update" />
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

