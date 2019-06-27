<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Vital_Signs_Report.aspx.cs" Inherits="Result_Vital_Signs_Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 23px;
        }
        .style5
        {
            width: 114px;
            height: 25px;
        }
        .style3
        {
            color: #3333FF;
        }
        .style34
        {
            height: 25px;
            width: 150px;
        }
        .style8
        {
            width: 22px;
        }
        .style9
        {
            width: 168px;
            height: 25px;
        }
        .style7
        {
            height: 25px;
        }
        .style37
        {
            width: 150px;
        }
        .style10
        {
            width: 168px;
        }
        .style12
        {
            width: 114px;
            height: 21px;
        }
        .style36
        {
            height: 21px;
            width: 150px;
        }
        .style14
        {
            width: 168px;
            height: 21px;
        }
        .style15
        {
            height: 21px;
        }
        
        .style33
        {
            width: 462px;
        }
        .style20
        {
            height: 23px;
            width: 462px;
        }
        .style29
        {
            width: 462px;
            height: 33px;
        }
        .style39
        {
            height: 23px;
            width: 157px;
        }
        .style40
        {
            width: 157px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: 700; text-align: center; color: #FFFFFF; background-color: #3333FF" 
                    Text="VITAL SIGNS REPORT" Width="894px"></asp:Label>
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
                <asp:Panel ID="Panel1" runat="server">
                    <asp:Panel ID="Panel2" runat="server">
                        <table class="style1">
                            <tr>
                                <td class="style5">
                                    <asp:Label ID="Label20" runat="server" style="font-size: medium" Text="Welcome"></asp:Label>
                                    &nbsp;<span class="style3">Doctor</span>
                                </td>
                                <td class="style34">
                                    <asp:Label ID="Label21" runat="server" style="color: #3333FF" 
                                    Text="Collects the name" Width="177px"></asp:Label>
                                </td>
                                <td class="style8" rowspan="4">
                                    <asp:Image ID="Image1" runat="server" Height="80px" Width="98px" 
                                    style="margin-left: 0px" />
                                </td>
                                <td class="style9">
                                </td>
                                <td class="style7">
                                    <asp:Label ID="Label24" runat="server" Text="To:" Width="30px"></asp:Label>
                                    <asp:DropDownList ID="DropDownList1" runat="server" Width="204px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style37">
                                    <asp:Label ID="Label22" runat="server" style="color: #3333FF" 
                                    Text="Collects the ID" Width="232px"></asp:Label>
                                </td>
                                <td class="style10">
                                    &nbsp;</td>
                                <td class="style16">
                                    <asp:Label ID="Label25" runat="server" Text="Text:" Width="30px"></asp:Label>
                                    <asp:TextBox ID="TextBox1" runat="server" Width="204px"></asp:TextBox>
                                    <asp:Button ID="Button2" runat="server" style="font-weight: 700" Text="Send" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style37">
                                    &nbsp;</td>
                                <td class="style10">
                                    &nbsp;</td>
                                <td class="style16">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style12">
                                </td>
                                <td class="style36">
                                </td>
                                <td class="style14">
                                </td>
                                <td class="style15">
                                    &nbsp;</td>
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
                <asp:Panel ID="Panel3" runat="server">
                    <table class="style1">
                        <tr>
                            <td>
                                <asp:Panel ID="Panel4" runat="server">
                                    <table class="style1">
                                        <tr>
                                            <td class="style33">
                                                <asp:Label ID="Label26" runat="server" 
                                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                                    Text="Patient Name:" Width="120px"></asp:Label>
                                                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                                                <asp:Button ID="Button3" runat="server" style="font-weight: 700" 
                                                    Text="Search" />
                                            </td>
                                            <td>
                                                <asp:Label ID="Label27" runat="server" 
                                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                                    Text="Patient ID:" Width="100px"></asp:Label>
                                                <asp:Label ID="Label28" runat="server" style="color: #3333FF" 
                                                    Text="Collects Patient ID"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style33">
                                                <asp:Label ID="Label29" runat="server" 
                                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                                    Text="Gender:" Width="120px"></asp:Label>
                                                <asp:Label ID="Label32" runat="server" style="color: #3333FF" 
                                                    Text="Collect the Gender Here "></asp:Label>
                                            </td>
                                            <td rowspan="3">
                                                <asp:Image ID="Image2" runat="server" Height="74px" Width="95px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style20">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style29">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
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
                <table class="style1">
                    <tr>
                        <td class="style40">
                            <asp:Label ID="Label34" runat="server" Text="Temperature"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style39">
                            <asp:Label ID="Label35" runat="server" Text="Weight"></asp:Label>
                        </td>
                        <td class="style2">
                            <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style39">
                            Blood Pressure</td>
                        <td class="style2">
                            <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
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
    </table>
</asp:Content>

