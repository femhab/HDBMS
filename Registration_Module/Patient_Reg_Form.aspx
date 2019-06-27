<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Patient_Reg_Form.aspx.cs" Inherits="Registration_Module_Patient_Reg_Form" %>

<%@ Register assembly="Infragistics4.WebUI.WebDateChooser.v10.3, Version=10.3.20103.1013, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.WebUI.WebSchedule" tagprefix="igsch" %>
<%@ Register assembly="Infragistics4.Web.v10.3, Version=10.3.20103.1013, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.Web.UI.EditorControls" tagprefix="ig" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 21px;
            text-align: left;
        }
        .style9
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        .style3
        {
            height: 26px;
        }
        .style4
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        .style5
        {
            height: 24px;
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
        .style29
        {
            width: 462px;
            height: 33px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                    <asp:Label ID="lblSubscriberName0" runat="server" 
                        style="color: #FF0000; text-align: center; font-weight: 700; font-size: x-large; background-color: #FFFFFF" 
                        Width="894px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label21" runat="server" 
                    style="font-size: large; font-weight: 700; text-align: center; color: #FFFFFF; background-color: #0000FF" 
                    Text="PATIENT REGISTRATION FORM" Width="902px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server">
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
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Panel ID="Panel2" runat="server" Visible="False">
                    <table class="style1">
                        <tr>
                            <td colspan="5">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label41" runat="server" style="font-size: medium" 
                Text="Subscriber_ID:" CssClass="style9"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblSubscriberID" runat="server"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td rowspan="6">
                                <asp:Image ID="PassportImg" runat="server" Height="93px" Width="99px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <asp:Label ID="Label40" runat="server" style="font-size: medium" 
                Text="Subscriber_Name:" CssClass="style9"></asp:Label>
                            </td>
                            <td class="style3">
                                <asp:Label ID="lblSubscriberName" runat="server"></asp:Label>
                            </td>
                            <td class="style3">
                            </td>
                            <td class="style3">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label22" runat="server" style="font-size: medium" 
                    Text="Patient ID:" CssClass="style4"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtPatientID" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label23" runat="server" style="font-size: medium" 
                    Text="Patient Name:" CssClass="style4"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtPatientName" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label24" runat="server" style="font-size: medium" Text="Gender:" 
                    CssClass="style4"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="dropGender" runat="server" Width="200px" 
                    DataSourceID="SqlDataSource1" DataTextField="GENDER" 
                    DataValueField="GENDER">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:HDBMS %>" 
                    SelectCommand="SELECT * FROM [GENDER_TBL]"></asp:SqlDataSource>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label25" runat="server" style="font-size: medium" Text="DOB:" 
                    CssClass="style4"></asp:Label>
                            </td>
                            <td class="style5">
                                <ig:WebDatePicker ID="dateDOB" runat="server" Width="200px">
                                </ig:WebDatePicker>
                            </td>
                            <td class="style5">
                            </td>
                            <td class="style5">
                                <asp:Label ID="Label33" runat="server" style="font-size: xx-small" 
                    Text="Image quality: 99 x 93 Pixel"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label26" runat="server" style="font-size: medium" 
                    Text="Nationality" CssClass="style4"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="dropNationality" runat="server" Width="200px">
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label32" runat="server" style="font-size: medium" 
                    Text="Select File:" CssClass="style4"></asp:Label>
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <asp:Label ID="Label27" runat="server" style="font-size: medium" 
                    Text="State of Origin:" CssClass="style4"></asp:Label>
                            </td>
                            <td class="style3">
                                <asp:DropDownList ID="dropState" runat="server" Width="200px">
                                </asp:DropDownList>
                            </td>
                            <td class="style3">
                            </td>
                            <td class="style3">
                                <asp:Label ID="Label31" runat="server" style="font-size: medium" 
                    Text="Next of Kin (NOK):" CssClass="style4"></asp:Label>
                            </td>
                            <td class="style3">
                                <asp:TextBox ID="txtNOK" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <asp:Label ID="Label28" runat="server" style="font-size: medium" Text="LGA:" 
                    CssClass="style4"></asp:Label>
                            </td>
                            <td class="style2">
                                <asp:DropDownList ID="dropLG" runat="server" Width="200px">
                                </asp:DropDownList>
                            </td>
                            <td class="style2">
                            </td>
                            <td class="style2">
                                <asp:Label ID="Label18" runat="server" style="font-size: medium" 
                Text="NOK Relationship:" CssClass="style4"></asp:Label>
                            </td>
                            <td class="style2">
                                <asp:DropDownList ID="dropNOKRel" runat="server" Width="200px" 
                    DataSourceID="SqlDataSource2" DataTextField="RELATIONSHIP" 
                    DataValueField="RELATIONSHIP">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:HDBMS %>" 
                    SelectCommand="SELECT * FROM [NOK_RELATIONSHIP_TBL]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label29" runat="server" style="font-size: medium" 
                    Text="Address:" CssClass="style4"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtAddress" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label16" runat="server" style="font-size: medium" 
                Text="NOK Address:" CssClass="style4"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtNOKAddress" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label30" runat="server" style="font-size: medium" 
                    Text="Mobile Number:" CssClass="style4"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtMobileNumber" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label17" runat="server" style="font-size: medium" 
                Text="NOK Mobile Number:" CssClass="style4"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtNOKMobile" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label34" runat="server" style="font-size: medium" 
                    Text="Email Address" CssClass="style4"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtEmailAddress" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label36" runat="server" style="font-size: medium" 
                    Text="Registration Date:" CssClass="style4"></asp:Label>
                            </td>
                            <td>
                                <ig:WebDatePicker ID="dateRegistration" runat="server" Width="200px">
                                </ig:WebDatePicker>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label35" runat="server" style="font-size: medium" 
                    Text="Blood Group" CssClass="style4"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="dropBloodGroup" runat="server" Width="200px" 
                    DataSourceID="SqlDataSource3" DataTextField="BLOOD_GROUP" 
                    DataValueField="BLOOD_GROUP">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:HDBMS %>" 
                    SelectCommand="SELECT * FROM [BLOOD_GROUP_TBL]"></asp:SqlDataSource>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label37" runat="server" style="font-size: medium" 
                    Text="Staff Incharge:" CssClass="style4"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblStaffName" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label38" runat="server" style="font-size: medium" 
                    Text="Genotype" CssClass="style4"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="dropGenotype" runat="server" Width="200px" 
                    DataSourceID="SqlDataSource4" DataTextField="GENOTYPE" 
                    DataValueField="GENOTYPE">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:HDBMS %>" 
                    SelectCommand="SELECT * FROM [GENOTYPE_TBL]"></asp:SqlDataSource>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label39" runat="server" style="font-size: medium" Text="DOD" 
                    CssClass="style4"></asp:Label>
                            </td>
                            <td>
                                <ig:WebDatePicker ID="dateDOD" runat="server" Width="200px">
                                </ig:WebDatePicker>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="LblMessage" runat="server" Text="Label" 
                Width="425px"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Submit" style="font-weight: 700" 
                    Width="200px" onclick="Button1_Click" />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button2" runat="server" Text="Clear" Width="102px" />
                            </td>
                            <td>
                                <asp:Button ID="Button3" runat="server" Text="Home" Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

