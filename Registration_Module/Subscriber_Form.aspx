<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Subscriber_Form.aspx.cs" Inherits="Registration_Module_Subscriber_Form" %>

<%@ Register assembly="Infragistics4.Web.v10.3, Version=10.3.20103.1013, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.Web.UI.EditorControls" tagprefix="ig" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        .style5
        {
            width: 223px;
        }
        .style6
        {
            height: 21px;
        }
        .style7
        {
            height: 21px;
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

        .style10
        {
            width: 282px;
        }
        .style11
        {
            height: 21px;
            width: 282px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label21" runat="server" 
                    style="font-size: large; font-weight: 700; text-align: center; color: #FFFFFF; background-color: #0000FF" 
                    Text="SUBSCRIBER FORM" Width="902px"></asp:Label>
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
                <asp:Panel ID="Panel1" runat="server">
                    <table class="style1">
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label22" runat="server" CssClass="style4" 
                                    style="font-size: medium" Text="Subscriber ID:"></asp:Label>
                            </td>
                            <td class="style10">
                                <asp:TextBox ID="txtSubscriberID" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td rowspan="4">
                                <asp:Image ID="PassportImg" runat="server" Height="93px" Width="99px" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label23" runat="server" CssClass="style4" 
                                    style="font-size: medium" Text="Subscriber Name:"></asp:Label>
                            </td>
                            <td class="style10">
                                <asp:TextBox ID="txtSubscriberName" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label24" runat="server" CssClass="style4" 
                                    style="font-size: medium" Text="Description:"></asp:Label>
                            </td>
                            <td class="style10">
                                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" 
                                    Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label25" runat="server" CssClass="style4" 
                                    style="font-size: medium" Text="Amount:"></asp:Label>
                            </td>
                            <td class="style10">
                                <asp:TextBox ID="txtAmount" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label26" runat="server" CssClass="style4" 
                                    style="font-size: medium" Text="Paid:"></asp:Label>
                            </td>
                            <td class="style10">
                                <asp:TextBox ID="txtPaid" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label27" runat="server" CssClass="style4" 
                                    style="font-size: medium" Text="Balance:"></asp:Label>
                            </td>
                            <td class="style10">
                                <asp:TextBox ID="txtBalance" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label28" runat="server" CssClass="style4" 
                                    style="font-size: medium" Text="Subscription Date:"></asp:Label>
                            </td>
                            <td class="style10">
                                <ig:WebDatePicker ID="dateSubscriptionDate" runat="server" Width="200px">
                                </ig:WebDatePicker>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label29" runat="server" CssClass="style4" 
                                    style="font-size: medium" Text="Expiry Date:"></asp:Label>
                            </td>
                            <td class="style10">
                                <ig:WebDatePicker ID="dateExpiryDate" runat="server" Width="200px">
                                </ig:WebDatePicker>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                <asp:Label ID="Label30" runat="server" CssClass="style4" 
                                    style="font-size: medium" Text="Subscriber Address:"></asp:Label>
                            </td>
                            <td class="style11">
                                <asp:TextBox ID="txtSubscriberAddress" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td class="style7">
                                &nbsp;</td>
                            <td class="style7">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                <asp:Label ID="Label31" runat="server" CssClass="style4" 
                                    style="font-size: medium" Text="Phone number:"></asp:Label>
                            </td>
                            <td class="style11">
                                <asp:TextBox ID="txtPhoneNumber" runat="server" Width="200px"></asp:TextBox>
                            </td>
                            <td class="style7">
                                &nbsp;</td>
                            <td class="style7">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                <asp:Label ID="Label32" runat="server" CssClass="style4" 
                                    style="font-size: medium" Text="Upload Logo:"></asp:Label>
                            </td>
                            <td class="style11">
                                <asp:FileUpload ID="FileUpload" runat="server" />
                            </td>
                            <td class="style7">
                                &nbsp;</td>
                            <td class="style7">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style11">
                                <asp:Button ID="Button3" runat="server" 
                                    style="font-weight: 700" Text="Upload" Width="200px" 
                                    onclick="Button3_Click1" />
                            </td>
                            <td class="style7">
                                &nbsp;</td>
                            <td class="style7">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6" colspan="2">
                                <asp:Label ID="LblMessage" runat="server" Text="Label" Width="425px"></asp:Label>
                            </td>
                            <td class="style7">
                                &nbsp;</td>
                            <td class="style7">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style11">
                                <asp:Button ID="Button1" runat="server" style="font-weight: 700" Text="Submit" 
                                    Width="200px" onclick="Button1_Click" />
                            </td>
                            <td class="style7">
                                &nbsp;</td>
                            <td class="style7">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style11">
                                <asp:Button ID="Button2" runat="server" style="font-weight: 700" Text="Update" 
                                    Width="200px" />
                            </td>
                            <td class="style7">
                                &nbsp;</td>
                            <td class="style7">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6" colspan="2">
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
                            </td>
                            <td class="style7">
                                &nbsp;</td>
                            <td class="style7">
                                &nbsp;</td>
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

