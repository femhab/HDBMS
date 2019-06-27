<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Staff_Reg_Form.aspx.cs" Inherits="Registration_Module_Staff_Reg_Form" %>

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
            text-align: center;
        }
        .style29
        {
            width: 462px;
            height: 33px;
        }
        .style10
        {
            font-size: medium;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style11
        {
            height: 26px;
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
            <asp:Label ID="Label1" runat="server" 
                style="font-size: large; font-weight: 700; text-align: center; color: #FFFFFF; background-color: #336699" 
                Text="STAFF REGISTRATION FORM" Width="936px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                    <asp:Panel ID="Panel5" runat="server" 
    style="text-align: justify" Width="460px">
                        <table class="style1">
                            <tr>
                                <td colspan="3">
                                    <asp:Label ID="Label28" runat="server" 
                                    style="font-size: medium; font-weight: 700; text-align: center" 
                                    Text="LOGIN PANEL" Width="458px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style27">
                                    <asp:Label ID="Label29" runat="server" Text="SN:"></asp:Label>
                                </td>
                                <td class="style2" colspan="2">
                                    <asp:TextBox ID="txtSN" runat="server" height="22px" Width="204px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style26">
                                    <asp:Label ID="Label30" runat="server" Text="Subscriber ID:"></asp:Label>
                                </td>
                                <td colspan="2" style="text-align: left">
                                    <asp:TextBox ID="txtSubscriberID" runat="server" height="22px" Width="204px"></asp:TextBox>
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
                                        style="text-align: left; font-weight: 700">Forgot password?</asp:LinkButton>
                                    <asp:Label ID="lblErrorMsg" runat="server"></asp:Label>
                                </td>
                                <td class="style29" align="justify">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel6" runat="server" Visible="False">
                    <table class="style1">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td rowspan="8">
                                <asp:Image ID="PassportImg" runat="server" Height="132px" Width="133px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label26" runat="server" 
                Text="Subscriber_ID:" CssClass="style10"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:Label ID="lblSubscriberID" runat="server" 
                    Width="200px"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <asp:Label ID="Label27" runat="server" 
                Text="Subscriber_Name:" CssClass="style10"></asp:Label>
                            </td>
                            <td class="style8">
                                <asp:Label ID="lblSubscriberName" runat="server" 
                    Width="200px"></asp:Label>
                            </td>
                            <td class="style2">
                            </td>
                            <td class="style2">
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <asp:Label ID="Label32" runat="server" 
                Text="Staff ID:" CssClass="style10"></asp:Label>
                            </td>
                            <td class="style8">
                                <asp:TextBox ID="txtStaffID" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td class="style2">
                                &nbsp;</td>
                            <td class="style2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label2" runat="server" CssClass="style10" Text="Username:"></asp:Label>
                            </td>
                            <td class="style7">
                                <asp:TextBox ID="txtUsername" runat="server" Width="200px"></asp:TextBox>
                                <asp:ImageButton ID="ImageButton1" runat="server" Width="21px" />
                            </td>
                            <td class="style4">
                            </td>
                            <td class="style4">
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label31" runat="server" CssClass="style10" Text="Password:"></asp:Label>
                            </td>
                            <td class="style7">
                                <asp:TextBox ID="txtPassword" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style4">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label3" runat="server" CssClass="style10" Text="Staff Name:"></asp:Label>
                            </td>
                            <td class="style7">
                                <asp:TextBox ID="txtStaffName" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td class="style4">
                            </td>
                            <td class="style4">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label8" runat="server" Text="Gender:" 
                CssClass="style10"></asp:Label>
                            </td>
                            <td class="style7">
                                <asp:DropDownList ID="dropGender" runat="server" Width="200px" 
                DataSourceID="SqlDataSource1" DataTextField="GENDER" 
                DataValueField="GENDER">
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:HDBMS %>" 
                SelectCommand="SELECT * FROM [GENDER_TBL]"></asp:SqlDataSource>
                            </td>
                            <td class="style4">
                            </td>
                            <td class="style4">
                                <asp:Label ID="Label23" runat="server" style="font-size: xx-small" 
                Text="Image quality: 99 x 93 Pixel"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label5" runat="server" CssClass="style10" Text="DOB:"></asp:Label>
                            </td>
                            <td class="style7">
                                <ig:WebDatePicker ID="dateDOB" runat="server" Width="200px">
                                </ig:WebDatePicker>
                            </td>
                            <td class="style4">
                            </td>
                            <td class="style4">
                                <asp:Label ID="Label22" runat="server" CssClass="style10" Text="Select File:"></asp:Label>
                            </td>
                            <td class="style4">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                <asp:Label ID="Label20" runat="server" CssClass="style10" Text="Nationality:"></asp:Label>
                            </td>
                            <td class="style11">
                                <asp:DropDownList ID="dropNationality" runat="server" Width="200px">
                                </asp:DropDownList>
                            </td>
                            <td class="style11">
                            </td>
                            <td class="style11">
                                <asp:Label ID="Label19" runat="server" 
                Text="Registration Date:" CssClass="style10"></asp:Label>
                            </td>
                            <td class="style11">
                                <ig:WebDatePicker ID="dateRegistration" runat="server" Width="200px">
                                </ig:WebDatePicker>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" CssClass="style10" 
                Text="State of Origin:"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:DropDownList ID="dropState" runat="server" Width="200px">
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label14" runat="server" 
                Text="Next of Kin(NOK):" CssClass="style10"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtNOK" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <asp:Label ID="Label7" runat="server" CssClass="style10" 
                Text="Local Govt. of Origin:"></asp:Label>
                            </td>
                            <td class="style8">
                                <asp:DropDownList ID="dropLG" runat="server" Width="200px">
                                </asp:DropDownList>
                            </td>
                            <td class="style2">
                            </td>
                            <td class="style2">
                                <asp:Label ID="Label18" runat="server" 
                Text="NOK Relationship:" CssClass="style10"></asp:Label>
                            </td>
                            <td class="style2">
                                <asp:DropDownList ID="dropNOKRel" runat="server" Width="200px" 
                DataSourceID="SqlDataSource3" DataTextField="RELATIONSHIP" 
                DataValueField="RELATIONSHIP">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:HDBMS %>" 
                SelectCommand="SELECT * FROM [NOK_RELATIONSHIP_TBL]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label9" runat="server" CssClass="style10" Text="Address:"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:TextBox ID="txtAddress" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label16" runat="server" 
                Text="NOK Address:" CssClass="style10"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtNOKAddress" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <asp:Label ID="Label11" runat="server" 
                Text="Correspondent Address:" CssClass="style10"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:TextBox ID="txtCorrespondent" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label17" runat="server" 
                Text="NOK Mobile Number:" CssClass="style10"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtNOKMobile" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label12" runat="server" Text="Mobile Number:" CssClass="style10"></asp:Label>
                            </td>
                            <td class="style7">
                                <asp:TextBox ID="txtMobileNumber" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td class="style4">
                            </td>
                            <td class="style4">
                                <asp:Label ID="Label24" runat="server" 
                Text="Highest Degree Obtained" CssClass="style10"></asp:Label>
                            </td>
                            <td class="style4">
                                <asp:DropDownList ID="dropDegree" runat="server" Width="200px" 
                DataSourceID="SqlDataSource4" DataTextField="DEGREE" 
                DataValueField="DEGREE">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                ConnectionString="<%$ ConnectionStrings:HDBMS %>" 
                SelectCommand="SELECT * FROM [DEGREE_TBL]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <asp:Label ID="Label13" runat="server" Text="Department:" CssClass="style10"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:DropDownList ID="dropDepartment" runat="server" Width="200px" 
                DataSourceID="SqlDataSource2" DataTextField="DEPT_NAME" 
                DataValueField="DEPT_NAME">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:HDBMS %>" 
                SelectCommand="SELECT * FROM [DEPARMENT_TBL]"></asp:SqlDataSource>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label10" runat="server" 
                Text="Position:" CssClass="style10"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="dropPosition" runat="server" Width="200px" 
                DataSourceID="SqlDataSource5" DataTextField="PROFESSION" 
                DataValueField="PROFESSION">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                ConnectionString="<%$ ConnectionStrings:HDBMS %>" 
                SelectCommand="SELECT * FROM [POSITION_TBL]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                <asp:Label ID="Label25" runat="server" 
                Text="Email Address:" CssClass="style10"></asp:Label>
                            </td>
                            <td class="style6">
                                <asp:TextBox ID="txtEmailAddress" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label21" runat="server" 
                Text="Role:" CssClass="style10"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="dropRole" runat="server" Width="200px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3" colspan="4">
                                <asp:Label ID="LblMessage" runat="server" Text="Label" 
                Width="425px"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style6">
                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" style="font-weight: 700" 
                Width="200px" onclick="Button1_Click" />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="btnClear" runat="server" Text="Clear" Width="99px" />
                                <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                Width="99px" />
                            </td>
                            <td>
                                <asp:Button ID="btnHome" runat="server" Text="Home" Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" colspan="5">
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

