<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Laboratory_Form.aspx.cs" Inherits="Staff_Module_Laboratory_Form" %>

<%@ Register assembly="Infragistics4.Web.v10.3, Version=10.3.20103.1013, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.Web.UI.EditorControls" tagprefix="ig" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style27
        {
            height: 21px;
            text-align: left;
        }
        .style2
        {
            width: 114px;
            text-align: left;
        }
        .style26
        {
            text-align: left;
        }
        .style29
        {
            width: 462px;
            height: 33px;
        }
        .style5
        {
            width: 114px;
            height: 25px;
        }
        .style34
        {
            height: 25px;
            width: 150px;
        }
        .style8
        {
        }
        .style37
        {
            width: 150px;
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
        .style38
        {
            height: 23px;
        }

        .style20
        {
            height: 23px;
            width: 421px;
        }
        .style41
        {
            height: 40px;
        }
        .style43
        {
        }
.igte_EditWithButtons
{
	font-size: 10px;
	font-family: Segoe UI, Verdana, Arial, Sans-Serif;
	background-color: #FFFFFF;
	height:20px;
	width: 130px;
	outline: 0;
	border:solid 1px #999999;
}


.igte_Inner
{
	border-width: 0;
}

.igte_EditInContainer
{
	font-size: 12px;
	font-family: Segoe UI, Verdana, Arial, Sans-Serif;
	background-color: Transparent;
	border-width:0px;
	outline:0;
}

.igte_Button
{
	background-color: #8EBEE0;
	background-image: url(C:/Users/VIRUS/Documents/Visual Studio 2010/WebSites/HDBMS/ig_res/Default/images/igte_spinbuttonbg.gif);
	background-repeat: repeat-x;
	line-height:normal;
	border:solid 1px #699BC9;
	color: #FFFFFF;
	cursor: pointer;
}

.igte_ButtonSize
{
	width:15px;
	height:100%;
}

        .style45
        {
            color: #000000;
        }
        .style46
        {
            font-family: Arial, Helvetica, sans-serif;
            color: #000000;
        }
        .style47
        {
            width: 166px;
        }
        .style52
        {
            width: 56px;
        }
        .style53
        {
            width: 56px;
            height: 40px;
        }
        .style54
        {
        }
        .style48
        {
            width: 172px;
        }
        .style49
        {
            width: 172px;
            height: 23px;
        }
        .style30
        {
            height: 23px;
        }
        .style55
        {
            width: 172px;
            height: 26px;
        }
        .style56
        {
            height: 26px;
        }
        .style57
        {
            width: 94px;
        }
        .style59
        {
            width: 421px;
            height: 33px;
        }
        .style61
        {
            width: 421px;
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
                <asp:Label ID="Label19" runat="server" 
                    style="font-size: medium; font-weight: 700; text-align: center; color: #FFFFFF; margin-bottom: 0px; background-color: #4682B4" 
                    Text="LABORATORY FORM" Width="820px" BackColor="SteelBlue" 
                    BorderColor="SteelBlue"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel5" runat="server" style="text-align: center" Width="460px">
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
                                <asp:TextBox ID="txtUsername" runat="server" height="22px" Width="204px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style26">
                                <asp:Label ID="Label14" runat="server" Text="Password:"></asp:Label>
                            </td>
                            <td colspan="2" style="text-align: left">
                                <asp:TextBox ID="txtPassword" runat="server" height="22px" Width="204px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button10" runat="server" Text="Cancel" Width="66px" />
                            </td>
                            <td>
                                <asp:Button ID="Button15" runat="server" style="font-weight: 700" Text="Login" 
                                    Width="204px" onclick="Button15_Click" />
                            </td>
                            <td class="style29">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td style="text-align: left" colspan="2">
                                <asp:LinkButton ID="LinkButton1" runat="server" 
                                    style="text-align: left; font-weight: 700">Forgot password?</asp:LinkButton>
                                <asp:Label ID="lblErrormsg" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style57">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server" Visible="False" BorderColor="SteelBlue" 
                    BorderStyle="Dashed" Width="810px">
                    <table class="style1">
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label20" runat="server" style="font-size: medium" Text="Welcome"></asp:Label>
                            </td>
                            <td class="style34">
                                <asp:Label ID="lblStaffname" runat="server" style="color: #3333FF" 
                                    Width="177px"></asp:Label>
                            </td>
                            <td class="style8" rowspan="4">
                                <asp:Image ID="imgPassport" runat="server" Height="80px" Width="98px" 
                                    style="margin-left: 70px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                &nbsp;</td>
                            <td class="style37">
                                <asp:Label ID="lblStaffID" runat="server" style="color: #3333FF" Width="232px"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                &nbsp;</td>
                            <td class="style37">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style12">
                            </td>
                            <td class="style36">
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style38" colspan="2">
                <asp:Panel ID="Panel2" runat="server" Visible="False" BackColor="Silver" 
                    BorderColor="SteelBlue" Width="820px">
                    <table class="style1">
                        <tr>
                            <td class="style61">
                                <asp:Label ID="Label53" runat="server" 
                                    style="font-size: medium; font-weight: 700;" 
                                    Text="Patient Details" CssClass="style46"></asp:Label>
                            </td>
                            <td rowspan="5">
                                <asp:Image ID="Image2" runat="server" Height="80px" Width="100px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style61">
                                <asp:Label ID="Label26" runat="server" 
                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                    Text="Patient Name:" Width="120px" CssClass="style45"></asp:Label>
                                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                                <asp:Button ID="Button3" runat="server" style="font-weight: 700" 
                                    Text="Search" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style61">
                                <asp:Label ID="Label27" runat="server" CssClass="style45" 
                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                    Text="Patient ID:" Width="120px"></asp:Label>
                                <asp:Label ID="Label28" runat="server" style="color: #3333FF" 
                                    Text="Collects Patient ID"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                <asp:Label ID="Label29" runat="server" CssClass="style45" 
                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                    Text="Gender:" Width="120px"></asp:Label>
                                <asp:Label ID="Label32" runat="server" style="color: #3333FF" 
                                    Text="Collect the Gender Here "></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style59">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style57">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style57">
                <asp:Panel ID="Panel6" runat="server" Visible="False" BackColor="SteelBlue" 
                    Width="400px" Height="350px">
                    <table class="style1">
                        <tr>
                            <td class="style52">
                                <asp:Label ID="Label52" runat="server" CssClass="style46" 
                                    style="font-size: medium; font-weight: 700;" Text="Investigations"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style52">
                                <asp:Label ID="Label33" runat="server" 
                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                    Text="Lab Category:" Width="120px" CssClass="style45"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList2" runat="server" Width="204px">
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style52">
                                <asp:Label ID="Label34" runat="server" 
                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                    Text="Investigations:" Width="120px" CssClass="style45"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBoxList ID="CheckBoxList1" runat="server" Width="200px">
                                </asp:CheckBoxList>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style52">
                                <asp:Label ID="Label35" runat="server" 
                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                    Text="Amount:" Width="120px" CssClass="style45"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox21" runat="server" ReadOnly="True" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style52">
                                <asp:Label ID="Label36" runat="server" 
                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                    Text="Description:" Width="120px" CssClass="style45"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox13" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style53">
                                <asp:Label ID="Label37" runat="server" 
                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                    Text="Investigation Date:" Width="150px" CssClass="style45"></asp:Label>
                            </td>
                            <td class="style41">
                                <ig:WebDatePicker ID="ExpiryDate" runat="server" Width="200px">
                                </ig:WebDatePicker>
                            </td>
                            <td class="style41">
                                &nbsp;</td>
                            <td class="style41">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style53">
                                <asp:Label ID="Label54" runat="server" 
                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                    Text="Total Amount:" Width="120px" CssClass="style45"></asp:Label>
                            </td>
                            <td class="style41">
                                <asp:TextBox ID="TextBox22" runat="server" ReadOnly="True" Width="200px"></asp:TextBox>
                            </td>
                            <td class="style41">
                                &nbsp;</td>
                            <td class="style41">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style53">
                                <asp:Label ID="Label55" runat="server" 
                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                    Text="Payment Status:" Width="120px" CssClass="style45"></asp:Label>
                            </td>
                            <td class="style41">
                                <asp:DropDownList ID="DropDownList3" runat="server" Width="204px">
                                </asp:DropDownList>
                            </td>
                            <td class="style41">
                                &nbsp;</td>
                            <td class="style41">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style53">
                                <asp:Button ID="Button16" runat="server" style="font-weight: 700" Text="Update" 
                                    Width="120px" />
                            </td>
                            <td class="style41">
                                <asp:Button ID="Button12" runat="server" style="font-weight: 700" Text="Submit" 
                                    Width="200px" onclick="Button12_Click" />
                            </td>
                            <td class="style41">
                                &nbsp;</td>
                            <td class="style41">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style43" colspan="2">
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                            </td>
                            <td class="style43">
                                &nbsp;</td>
                            <td class="style43">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>
                <asp:Panel ID="Panel7" runat="server" Visible="False" BackColor="SteelBlue" 
                    BorderColor="SteelBlue" Width="400px" Height="350px">
                    <table class="style1">
                        <tr>
                            <td class="style47">
                                <asp:Label ID="Label56" runat="server" CssClass="style46" 
                                    style="font-size: medium; font-weight: 700;" Text="Upload Result"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style47">
                                <asp:Label ID="Label57" runat="server" 
                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                    Text="Patient ID:" Width="120px" CssClass="style45"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label58" runat="server" style="color: #3333FF" 
                                    Text="Collects ID here"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style47">
                                <asp:Label ID="Label59" runat="server" 
                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                    Text="Upload:" Width="120px" CssClass="style45"></asp:Label>
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style47">
                                <asp:Label ID="Label82" runat="server" 
                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                    Text="Date:" Width="120px" CssClass="style45"></asp:Label>
                            </td>
                            <td>
                                <ig:WebDatePicker ID="ExpiryDate0" runat="server" Width="200px">
                                </ig:WebDatePicker>
                            </td>
                        </tr>
                        <tr>
                            <td class="style47">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button17" runat="server" style="font-weight: 700" Text="Submit" 
                                    Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style47">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style38" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style54" colspan="2">
                                <asp:Panel ID="Panel9" runat="server" BackColor="Silver" BorderColor="Silver" 
                                    Width="840px" Visible="False">
                                    <table class="style1">
                                        <tr>
                                            <td class="style48">
                                                <asp:Label ID="Label77" runat="server" CssClass="style45" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-weight: 700; font-size: medium" 
                                                    Text="Messaging"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style48">
                                                <asp:Label ID="Label83" runat="server" CssClass="style45" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                    Text="Sender:"></asp:Label>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="lblStaffname2" runat="server" style="color: #3333FF" 
                                                    Text="Collects the ID"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style55">
                                                <asp:Label ID="Label84" runat="server" 
                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                    Text="Department ID:" CssClass="style45"></asp:Label>
                                            </td>
                                            <td class="style56">
                                                <asp:DropDownList ID="DropDownList7" runat="server" Width="200px">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style48">
                                                <asp:Label ID="Label65" runat="server" CssClass="style45" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                    Text="Recipient ID:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList9" runat="server" Width="200px">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style48">
                                                <asp:Label ID="Label61" runat="server" 
                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                    Text="Message:" CssClass="style45"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox23" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style49">
                                                <asp:Label ID="Label63" runat="server" 
                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                    Text="Patient ID:" CssClass="style45"></asp:Label>
                                            </td>
                                            <td class="style30">
                                                <asp:Label ID="Label62" runat="server" style="color: #3333FF" 
                                    Text="Collects the ID"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style49">
                                                &nbsp;</td>
                                            <td class="style30">
                                                <asp:Button ID="Button18" runat="server" style="font-weight: 700" Text="Send" 
                                    Width="200px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style49">
                                                &nbsp;</td>
                                            <td class="style30">
                                                <asp:LinkButton ID="LinkButton2" runat="server" 
                                    style="text-align: left; font-weight: 700">Check General History?</asp:LinkButton>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
        </tr>
        </table>
</asp:Content>

