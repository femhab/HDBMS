<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Nurse_Form.aspx.cs" Inherits="Staff_Module_Nurse_Form" %>

<%@ Register assembly="Infragistics4.Web.v10.3, Version=10.3.20103.1013, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.Web.UI.EditorControls" tagprefix="ig" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
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
        .style7
        {
            height: 25px;
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
        .style15
        {
            height: 21px;
        }
        
        .style33
        {
            width: 462px;
        }
        .style30
        {
            height: 23px;
        }
        .style45
        {
        }
        .style46
        {
            width: 80px;
            height: 23px;
        }
        
        .style48
        {
        }
        .style49
        {
            width: 114px;
            text-align: left;
            height: 21px;
        }
        .style50
        {
            width: 462px;
            height: 22px;
        }
        .style51
        {
            color: #FFFFFF;
        }
        .style52
        {
            height: 23px;
            color: #000000;
        }
        .style53
        {
            color: #FFFFFF;
        }
        .style54
        {
            color: #000000;
        }
        .style56
        {
            height: 26px;
        }
        .style59
        {
            width: 115px;
        }
        .style60
        {
            width: 115px;
            text-align: left;
            height: 21px;
        }
        .style61
        {
            width: 413px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                    <asp:Label ID="lblSubscriberName" runat="server" 
                        style="color: #FF0000; text-align: center; font-weight: 700; font-size: x-large; background-color: #FFFFFF" 
                        Width="894px"></asp:Label>
                </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" 
                    style="font-size: large; font-weight: 700; text-align: center; color: #FFFFFF; background-color: #4682B4" 
                    Text="NURSE'S SERVICE PAGE" Width="820px" BackColor="SteelBlue" 
                    BorderColor="SteelBlue"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel9" runat="server">
                    <asp:Panel ID="Panel5" runat="server" 
    style="text-align: center" Width="460px">
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
                                    <asp:Label ID="Username" runat="server" Text="Username:"></asp:Label>
                                </td>
                                <td class="style2" colspan="2">
                                    <asp:TextBox ID="txtUsername" runat="server" height="22px" Width="204px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style26">
                                    <asp:Label runat="server" Text="Password:"></asp:Label>
                                </td>
                                <td colspan="2" style="text-align: left">
                                    <asp:TextBox ID="txtPassword" runat="server" height="22px" Width="204px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btnSignout" runat="server" Text="Signout" Width="66px" />
                                </td>
                                <td>
                                    <asp:Button ID="btnLogin" runat="server" style="font-weight: 700" Text="Login" 
                                    Width="204px" onclick="Button15_Click" />
                                </td>
                                <td class="style29">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Label ID="lblErrormsg" runat="server"></asp:Label>
                                    <asp:LinkButton ID="LinkButton1" runat="server" 
                                        style="text-align: left; font-weight: 700">Forgot password?</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </asp:Panel>
                <asp:Panel ID="Panel10" runat="server">
                    <table class="style1">
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
                                    Text="Collects the name" Width="177px"></asp:Label>
                                            </td>
                                            <td class="style8" rowspan="4">
                                                <asp:Image ID="imgPassport" runat="server" Height="80px" Width="98px" 
                                    style="margin-left: 109px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style49">
                                                </td>
                                            <td class="style36">
                                                <asp:Label ID="lblStaffID" runat="server" style="color: #3333FF" 
                                    Text="Collects the ID" Width="232px"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style49">
                                                </td>
                                            <td class="style36">
                                                </td>
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
                            <td class="style61">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Panel ID="Panel2" runat="server" Visible="False" BackColor="Silver" 
                                    Width="820px">
                                    <table class="style1">
                                        <tr>
                                            <td class="style33">
                                                <asp:Label ID="Label69" runat="server" 
                                    style="font-size: medium; font-weight: 700;" 
                                    Text="Patient Details" CssClass="style52" BorderColor="Silver"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style29">
                                                <asp:Label ID="Label26" runat="server" 
                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                    Text="Patient ID:" Width="120px" BorderColor="Silver" CssClass="style54"></asp:Label>
                                                <asp:TextBox ID="txtPatientID" runat="server" Width="200px"></asp:TextBox>
                                                <asp:Button ID="Button3" runat="server" style="font-weight: 700" 
                                    Text="Search" />
                                            </td>
                                            <td rowspan="4">
                                                <asp:Image ID="Image2" runat="server" Height="92px" Width="123px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style33">
                                                <asp:Label ID="Label27" runat="server" 
                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                    Text="Patient Name:" Width="120px" BorderColor="Silver" CssClass="style54"></asp:Label>
                                                <asp:Label ID="lblPatientName" runat="server" style="color: #3333FF"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style50">
                                                <asp:Label ID="Label29" runat="server" 
                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                    Text="Gender:" Width="120px" BorderColor="Silver" CssClass="style54"></asp:Label>
                                                <asp:Label ID="lblGender" runat="server" style="color: #3333FF" 
                                    Text="Collect the Gender Here "></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style29">
                                                <asp:Label ID="Label33" runat="server" 
                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                    Text="Check Medical Record:" Width="198px" BorderColor="Silver" CssClass="style54"></asp:Label>
                                                <asp:Button ID="Button4" runat="server" style="font-weight: 700" Text="Check" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="style61">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style61">
                                <asp:Panel ID="Panel6" runat="server" BackColor="SteelBlue" 
                                    BorderColor="SteelBlue" Visible="False" Width="400px" Height="300px">
                                    <table class="style1">
                                        <tr>
                                            <td class="style7" colspan="2">
                                                <asp:Label ID="Label70" runat="server" CssClass="style52" 
                                                    style="font-size: medium; font-weight: 700;" Text="Vital Signs Upload"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style45">
                                                <asp:Label ID="Label57" runat="server" CssClass="style54" 
                                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                                    Text="Patient ID:" Width="166px"></asp:Label>
                                            </td>
                                            <td style="color: #FFFFFF">
                                                <asp:Label ID="lblPatientID" runat="server" CssClass="style51" 
                                                    Text="Collects ID here"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style45">
                                                <asp:Label ID="Label59" runat="server" CssClass="style54" 
                                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                                    Text="Upload:" Width="120px"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style46">
                                                <asp:Label ID="Label75" runat="server" CssClass="style54" 
                                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                                    Text="Body Temperature:" Width="143px"></asp:Label>
                                            </td>
                                            <td class="style30">
                                                <asp:TextBox ID="txtBodyTemperature" runat="server" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style45">
                                                <asp:Label ID="Label76" runat="server" CssClass="style54" 
                                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                                    Text="Blood Pressure:" Width="120px"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtBodyPressure" runat="server" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style45">
                                                <asp:Label ID="Label77" runat="server" CssClass="style54" 
                                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                                    Text="Pulse Rate:" Width="120px"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtPulseRate" runat="server" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style45">
                                                <asp:Label ID="Label78" runat="server" CssClass="style54" 
                                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                                    Text="Heart Rate" Width="120px"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtHeartRate" runat="server" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style45">
                                                <asp:Label ID="Label79" runat="server" CssClass="style54" 
                                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                                    Text="Respirations:" Width="120px"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtRespiration" runat="server" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style45">
                                                <asp:Label ID="Label80" runat="server" CssClass="style54" 
                                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                                    Text="Oxygen Saturation:" Width="148px"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtOxygenSaturation" runat="server" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style45">
                                                <asp:Label ID="Label82" runat="server" CssClass="style54" 
                                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                                    Text="Date:" Width="120px"></asp:Label>
                                            </td>
                                            <td>
                                                <ig:WebDatePicker ID="dateTest" runat="server" Width="200px">
                                                </ig:WebDatePicker>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style45">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="Button17" runat="server" onclick="Button17_Click" 
                                                    style="font-weight: 700" Text="Submit" Width="200px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style15" colspan="2">
                                                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                            <td>
                                <asp:Panel ID="Panel7" runat="server" BackColor="SteelBlue" 
                                    BorderColor="SteelBlue" Visible="False" Width="400px" Height="300px">
                                    <table class="style1">
                                        <tr>
                                            <td class="style48" colspan="2">
                                                <asp:Label ID="Label71" runat="server" CssClass="style52" Height="25px" 
                                                    style="font-size: medium; font-weight: 700;" Text="Ward Round Report Upload" 
                                                    Width="241px"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style48">
                                                <asp:Label ID="Label72" runat="server" CssClass="style54" 
                                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                                    Text="Patient ID:" Width="172px"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblPatientID2" runat="server" CssClass="style53" 
                                                    Text="Collects ID here"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style48">
                                                <asp:Label ID="Label74" runat="server" CssClass="style54" 
                                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                                    Text="Upload:" Width="120px"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:FileUpload ID="FileUpload2" runat="server" Width="200px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style48">
                                                <asp:Label ID="Label81" runat="server" CssClass="style54" 
                                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                                    Text="Date:" Width="120px"></asp:Label>
                                            </td>
                                            <td>
                                                <ig:WebDatePicker ID="RegDate" runat="server" Width="200px">
                                                </ig:WebDatePicker>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style48">
                                                <asp:Label ID="Label83" runat="server" CssClass="style54" 
                                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                                    Text="Doctor on Duty:" Width="120px"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="lblDoctorID" runat="server" CssClass="style53"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style47" colspan="2">
                                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                                </asp:ScriptManager>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style48">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="Button18" runat="server" onclick="Button18_Click" 
                                                    style="font-weight: 700" Text="Submit" Width="200px" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <table class="style1">
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                                <asp:Panel ID="Panel11" runat="server" BackColor="Silver" BorderColor="Silver" 
                                    Width="820px" Visible="False">
                                    <table class="style1">
                                        <tr>
                                            <td class="style59">
                                                <asp:Label ID="Label85" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-weight: 700; font-size: medium" 
                                                    Text="Messaging"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style59">
                                                <asp:Label ID="Label86" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                    Text="Sender:"></asp:Label>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="lblStaffname2" runat="server" style="color: #3333FF" 
                                                    Text="Collects the ID"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style59">
                                                <asp:Label ID="Label84" runat="server" 
                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                    Text="Department ID:" CssClass="style54"></asp:Label>
                                            </td>
                                            <td class="style56">
                                                <asp:DropDownList ID="DropDownList7" runat="server" Width="200px">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style59">
                                                <asp:Label ID="Label65" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                    Text="Recipient ID:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList9" runat="server" Width="200px">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style59">
                                                <asp:Label ID="Label61" runat="server" 
                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                    Text="Message:" CssClass="style54"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox23" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style60">
                                                <asp:Label ID="Label63" runat="server" 
                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                    Text="Patient ID:" CssClass="style54"></asp:Label>
                                            </td>
                                            <td class="style30">
                                                <asp:Label ID="Label62" runat="server" style="color: #3333FF" 
                                    Text="Collects the ID"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style60">
                                                &nbsp;</td>
                                            <td class="style30">
                                                <asp:Button ID="Button19" runat="server" style="font-weight: 700" Text="Send" 
                                    Width="200px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style60">
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
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

