<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Doctors_Form.aspx.cs" Inherits="Staff_Module_Doctors_Form" %>

<%@ Register assembly="Infragistics4.Web.v10.3, Version=10.3.20103.1013, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.Web.UI.EditorControls" tagprefix="ig" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 99%;
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
	background-image: url(C:/Users/VIRUS/Documents/Visual Studio 2010/WebSites/HDBMS_Stock_Module/ig_res/Default/images/igte_spinbuttonbg.gif);
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

        .style2
        {
            width: 114px;
            text-align: left;
        }
        .style29
        {
            width: 462px;
            height: 33px;
        }
        .style38
        {
            width: 11px;
        }
        .style17
        {
            width: 21px;
        }
        .style28
        {
            width: 571px;
        }
        .style5
        {
            width: 31px;
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
        .style37
        {
            width: 150px;
        }
        .style12
        {
            width: 31px;
            height: 21px;
        }
        .style36
        {
            height: 21px;
            width: 150px;
        }
        .style30
        {
            height: 23px;
        }
        .style44
        {
            height: 23px;
            width: 167px;
        }
        .style43
        {
            width: 167px;
        }
        .style46
        {
            width: 166px;
        }
        .style47
        {
            width: 166px;
            height: 23px;
        }
        .style27
        {
            height: 21px;
            text-align: left;
        }
        .style26
        {
            text-align: left;
        }
        .style52
        {
            width: 405px;
        }
        .style53
        {
            width: 405px;
            height: 33px;
        }
        .style54
        {
            color: #000000;
        }
        .style55
        {
            height: 23px;
            color: #000000;
        }
        .style57
        {
            width: 135px;
        }
        .style58
        {
            width: 135px;
            height: 23px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <asp:Panel ID="Panel10" runat="server" Visible="False">
                    <asp:Label ID="lblSubscriberName" runat="server" 
                        style="color: #FF0000; text-align: center; font-weight: 700; font-size: x-large; background-color: #FFFFFF" 
                        Width="894px"></asp:Label>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label19" runat="server" 
                    style="font-size: medium; font-weight: 700; text-align: center; color: #FFFFFF; margin-bottom: 0px; background-color: #4682B4" 
                    Text="DOCTOR'S CONSULTATION FORM" Width="820px" BackColor="SteelBlue" 
                    BorderColor="SteelBlue"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
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
                                    <asp:Label ID="Label13" runat="server" Text="Username:"></asp:Label>
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
                                    <asp:Button ID="btnSignout" runat="server" Text="Signout" Width="66px" />
                                </td>
                                <td>
                                    <asp:Button ID="btnLogin" runat="server" style="font-weight: 700" Text="Login" 
                                        Width="204px" onclick="btnLogin_Click" />
                                </td>
                                <td class="style29">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="text-align: left">
                                    <asp:LinkButton ID="LinkButton1" runat="server" 
                                        style="text-align: left; font-weight: 700" BackColor="#6699FF">Forgot password?</asp:LinkButton>
                                </td>
                                <td class="style29">
                                    <asp:Label ID="lblErrormsg" runat="server" Width="200px"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel11" runat="server" Visible="False">
                    <table class="style1">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style38">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td class="style17">
                                &nbsp;</td>
                            <td class="style28">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="6">
                                <asp:Panel ID="Panel1" runat="server" Visible="False" BorderColor="SteelBlue" 
                                    BorderStyle="Dashed" Width="810px">
                                    <table class="style1">
                                        <tr>
                                            <td class="style5">
                                                <asp:Label ID="Label20" runat="server" style="font-size: medium" Text="Welcome"></asp:Label>
                                                &nbsp;<span class="style3">Doctor</span>
                                            </td>
                                            <td class="style34">
                                                <asp:Label ID="lblStaffname" runat="server" style="color: #3333FF" 
                                    Text="Collects the name" Width="177px"></asp:Label>
                                            </td>
                                            <td class="style8" rowspan="4">
                                                <asp:ImageButton ID="imgPassport" runat="server" Height="80px" 
                                                   Width="99px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style2">
                                                &nbsp;</td>
                                            <td class="style37">
                                                <asp:Label ID="lblStaffID" runat="server" style="color: #3333FF" 
                                    Text="Collects the ID" Width="232px"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style2">
                                                &nbsp;</td>
                                            <td class="style37">
                                                <asp:Label ID="lblSubscriberID" runat="server"></asp:Label>
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
                            <td colspan="6">
                                <asp:Panel ID="Panel2" runat="server" BackColor="Silver" BorderColor="Silver" 
                                    Width="820px">
                                    <table class="style1">
                                        <tr>
                                            <td class="style52">
                                                <asp:Label ID="Label69" runat="server" 
                                    style="font-size: medium; font-weight: 700;" 
                                    Text="Patient Details" CssClass="style55"></asp:Label>
                                            </td>
                                            <td rowspan="5">
                                                <asp:Image ID="Image2" runat="server" Height="80px" Width="100px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style52">
                                                <asp:Label ID="Label26" runat="server" 
                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                    Text="Patient ID:" Width="120px" CssClass="style54"></asp:Label>
                                                <asp:TextBox ID="txtPatientID" runat="server" Width="200px"></asp:TextBox>
                                                <asp:Button ID="Button3" runat="server" style="font-weight: 700" 
                                    Text="Search" onclick="Button3_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style52">
                                                <asp:Label ID="Label27" runat="server" CssClass="style54" 
                                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                                    Text="Patient Name:" Width="120px"></asp:Label>
                                                <asp:Label ID="lblPatientName" runat="server" style="color: #3333FF"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style52">
                                                <asp:Label ID="Label29" runat="server" CssClass="style54" 
                                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                                    Text="Gender:" Width="120px"></asp:Label>
                                                <asp:Label ID="txtGender" runat="server" style="color: #3333FF"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style53">
                                                <asp:Label ID="Label33" runat="server" 
                                    style="font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                                    Text="Check Medical Record:" Width="198px" CssClass="style54"></asp:Label>
                                                <asp:Button ID="Button4" runat="server" style="font-weight: 700" Text="Check" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style38">
                                <asp:Label ID="lbl" runat="server"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td class="style17">
                                &nbsp;</td>
                            <td class="style28">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Panel ID="Panel3" runat="server" BackColor="SteelBlue" 
                                    BorderColor="SteelBlue" Width="400px" Height="340px">
                                    <table class="style1">
                                        <tr>
                                            <td class="style31">
                                                <asp:Label ID="Label44" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 700;" 
                                                    Text="Consultations"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style31">
                                                <asp:Label ID="Label34" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                    Text="Diagnosis:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="dropDiagnosis" runat="server" 
                                                    DataSourceID="SqlDataSource1" DataTextField="DISEASES" 
                                                    DataValueField="DISEASES" Width="200px" 
                                                    onselectedindexchanged="dropDiagnosis_SelectedIndexChanged" 
                                                    AutoPostBack="True">
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:HDBMS %>" 
                                                    SelectCommand="SELECT * FROM [TREATMENT_REF_TBL]"></asp:SqlDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style31">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="Button12" runat="server" onclick="Button12_Click" 
                                                    style="font-weight: 700" Text="Add" Width="200px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style31">
                                                <asp:Label ID="Label35" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                    Text="Symptoms:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="symptomsTxt" runat="server" TextMode="MultiLine" Width="200px" 
                                                    ></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style31">
                                                <asp:Label ID="Label37" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                    Text="Suggested Treatment:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtTreatment" runat="server" TextMode="MultiLine" 
                                                    Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style31">
                                                <asp:Label ID="Label45" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                    Text="List of Diagnosis:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:ListBox ID="diagnosisList" runat="server" Width="200px"></asp:ListBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style31">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="Button19" runat="server" onclick="Button19_Click" Text="Remove" 
                                                    Width="200px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style31" colspan="2">
                                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                                </asp:ScriptManager>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td class="style17">
                                &nbsp;</td>
                            <td class="style28">
                                <asp:Panel ID="Panel6" runat="server" BackColor="SteelBlue" 
                                    BorderColor="SteelBlue" Width="400px" Height="340px">
                                    <table class="style1">
                                        <tr>
                                            <td class="style44">
                                                <asp:Label ID="Label46" runat="server" BackColor="SteelBlue" 
                                                    BorderColor="SteelBlue" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 700;" 
                                                    Text="Investigations:"></asp:Label>
                                            </td>
                                            <td class="style30">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style44">
                                                <asp:Label ID="Label50" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                    Text="Investigation Category:"></asp:Label>
                                            </td>
                                            <td class="style30">
                                                <asp:DropDownList ID="departmentDrop0" runat="server" AutoPostBack="True" 
                                                    DataSourceID="SqlDataSource3" DataTextField="INVESTIGATION_CATEGORY" 
                                                    DataValueField="INVESTIGATION_CATEGORY" Width="200px">
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:HDBMS %>" 
                                                    SelectCommand="SELECT * FROM [INVESTIGATION_TBL]"></asp:SqlDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style44">
                                                <asp:Label ID="Label49" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                    Text="Investigations Type:"></asp:Label>
                                            </td>
                                            <td class="style30">
                                                <asp:DropDownList ID="investigationTypeDrop" runat="server" AutoPostBack="True" 
                                                    DataSourceID="SqlDataSource3" DataTextField="INVESTIGATION_TYPE" 
                                                    DataValueField="INVESTIGATION_TYPE" 
                                                    onselectedindexchanged="DropDownList4_SelectedIndexChanged" Width="200px">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style44">
                                                <asp:Label ID="Label47" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                    Text="Investigations:"></asp:Label>
                                            </td>
                                            <td class="style30">
                                                <asp:DropDownList ID="investigationDrop" runat="server" 
                                                    DataSourceID="SqlDataSource3" DataTextField="INVESTIGATION" 
                                                    DataValueField="INVESTIGATION" Width="200px">
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:HDBMS %>" 
                                                    SelectCommand="SELECT * FROM [INVESTIGATION_TBL]"></asp:SqlDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style44">
                                                &nbsp;</td>
                                            <td class="style30">
                                                <asp:Button ID="Button20" runat="server" onclick="Button20_Click" 
                                                    style="font-weight: 700" Text="Add" Width="200px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style43">
                                                <asp:Label ID="Label48" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                    Text="Investigation(s):"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:ListBox ID="investigationsList" runat="server" Width="200px"></asp:ListBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style43">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="Button21" runat="server" onclick="Button21_Click" Text="Remove" 
                                                    Width="200px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style43">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="6">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Panel ID="Panel7" runat="server" BackColor="SteelBlue" 
                                    BorderColor="SteelBlue" Width="400px" Height="270px">
                                    <table class="style1">
                                        <tr>
                                            <td class="style46">
                                                <asp:Label ID="Label76" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 700;" 
                                                    Text="Prescriptions"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td rowspan="6">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style46">
                                                <asp:Label ID="Label52" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                    Text="Prescription:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="prescriptionList" runat="server" 
                                                    DataSourceID="SqlDataSource1" DataTextField="TREATMENT" 
                                                    DataValueField="TREATMENT" Width="200px">
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style47">
                                                <asp:Label ID="Label54" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                    Text="Description:"></asp:Label>
                                            </td>
                                            <td class="style30">
                                                <asp:TextBox ID="DescriptionList" runat="server" TextMode="MultiLine" 
                                                    Width="200px"></asp:TextBox>
                                            </td>
                                            <td class="style30">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style47">
                                                &nbsp;</td>
                                            <td class="style30">
                                                <asp:Button ID="Button23" runat="server" onclick="Button23_Click" 
                                                    style="font-weight: 700" Text="Add" Width="200px" />
                                            </td>
                                            <td class="style30">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style46">
                                                <asp:Label ID="Label53" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                    Text="List of Prescription:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:ListBox ID="prescriptionsList" runat="server" Width="200px" 
                                                    SelectionMode="Multiple"></asp:ListBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style46">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="Button22" runat="server" onclick="Button22_Click" Text="Remove" 
                                                    Width="200px" />
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                            <td class="style17">
                                &nbsp;</td>
                            <td class="style28">
                                <asp:Panel ID="Panel8" runat="server" BackColor="SteelBlue" 
                                    BorderColor="SteelBlue" Width="400px" Height="270px">
                                    <table class="style1">
                                        <tr>
                                            <td class="style46">
                                                <asp:Label ID="Label55" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                    Text="Remark:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtRemark" runat="server" style="margin-left: 0px" 
                                                    TextMode="MultiLine" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style46">
                                                <asp:Label ID="Label56" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                    Text="Advice:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtAdvice" runat="server" style="margin-left: 0px" 
                                                    TextMode="MultiLine" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style46">
                                                <asp:Label ID="Label75" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                    Text="Date:"></asp:Label>
                                            </td>
                                            <td>
                                                <ig:WebDatePicker ID="dateConsultaion" runat="server" Width="200px">
                                                </ig:WebDatePicker>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style46">
                                                &nbsp;</td>
                                            <td>
                                                <asp:CheckBox ID="CheckBox1" runat="server" style="color: #000000" 
                                                    Text=" Book Appointment" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style46">
                                                <asp:Label ID="Label70" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                    Text="Book Appointment:"></asp:Label>
                                            </td>
                                            <td>
                                                <ig:WebDatePicker ID="RegDate0" runat="server" Width="200px">
                                                </ig:WebDatePicker>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style46">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="Button24" runat="server" style="font-weight: 700" Text="Send" 
                                                    Width="200px" onclick="Button24_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style46">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="lblError" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="6">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style38">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td class="style17">
                                &nbsp;</td>
                            <td class="style28">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="6">
                                <asp:Panel ID="Panel9" runat="server" BackColor="Silver" BorderColor="Silver" 
                                    Width="840px">
                                    <table class="style1">
                                        <tr>
                                            <td class="style57">
                                                <asp:Label ID="Label77" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-weight: 700; font-size: medium" 
                                                    Text="Messaging"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style57">
                                                <asp:Label ID="Label58" runat="server" CssClass="style54" 
                                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                    Text="Sender:"></asp:Label>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="lblStaffname2" runat="server" style="color: #3333FF" 
                                                    Text="Collects the ID"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style57">
                                                <asp:Label ID="Label59" runat="server" 
                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                    Text="Department ID:" CssClass="style54"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList7" runat="server" Width="200px">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style57">
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
                                            <td class="style57">
                                                <asp:Label ID="Label61" runat="server" 
                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                    Text="Message:" CssClass="style54"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox21" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style58">
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
                                            <td class="style58">
                                                &nbsp;</td>
                                            <td class="style30">
                                                <asp:Button ID="Button17" runat="server" style="font-weight: 700" Text="Send" 
                                    Width="200px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style58">
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
                            <td class="style38">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td class="style17">
                                &nbsp;</td>
                            <td class="style28">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

