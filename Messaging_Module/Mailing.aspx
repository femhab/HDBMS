<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Mailing.aspx.cs" Inherits="Messaging_Module_Mailing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">

    .style1
    {
        width: 72%;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="3">
                <asp:Label ID="Label6" runat="server" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: 700; text-align: center; color: #FFFFFF; background-color: #4682B4" 
                    Text="MESSAGING FORM" Width="679px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" style="font-size: medium" 
                Text="Receiver ID:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtReceiverID" runat="server" Width="400px"></asp:TextBox>
            </td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" style="font-size: medium" 
                Text="Sender ID:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSenderID" runat="server" Width="400px"></asp:TextBox>
            </td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" style="font-size: medium" Text="Message:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMessage" runat="server" Height="71px" TextMode="MultiLine" 
                Width="400px"></asp:TextBox>
            </td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" style="font-size: medium" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnMessage" runat="server" 
                style="font-weight: 700; font-style: italic" Text="SEND MESSAGE" 
                Width="200px" onclick="btnMessage_Click" />
                <asp:Button ID="btnHome" runat="server" Text="Homepage" Width="200px" />
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" style="font-size: medium" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblMsg" runat="server" style="font-size: medium"></asp:Label>
            </td>
            <td>
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

