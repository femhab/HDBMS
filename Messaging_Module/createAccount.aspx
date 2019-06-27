<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="createAccount.aspx.cs" Inherits="Messaging_Module_createAccount" %>

<%@ Register namespace="Infragistics.WebUI.UltraWebGrid" tagprefix="UltraWebGrid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 62%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
    <tr>
        <td colspan="3">
                <asp:Label ID="Label6" runat="server" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: 700; text-align: center; color: #FFFFFF; background-color: #4682B4" 
                    Text="Create New Account" Width="578px" Height="30px"></asp:Label>
            </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label7" runat="server" style="font-size: medium" 
                Text="Subscriber:"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="scbsciberDropDownList1" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="SUBCRIBER_NAME" 
                DataValueField="SUBSCRIBER_ID" Height="25px" Width="205px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:HDBMS %>" 
                SelectCommand="SELECT [SUBCRIBER_NAME], [SUBSCRIBER_ID] FROM [SUBSCRIBER_TBL]">
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label8" runat="server" style="font-size: medium" 
                Text="Staff ID:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtStaffID" runat="server" Width="200px" Height="25px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label9" runat="server" style="font-size: medium" 
                Text="Staff Name:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtStaffName" runat="server" Height="25px" Width="200px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" style="font-size: medium" 
                Text="Username:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtUsername" runat="server" Width="200px" Height="25px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label10" runat="server" style="font-size: medium" 
                Text="Password:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPwd" runat="server" Height="25px" Width="200px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" style="font-size: medium" 
                Text="Gender:"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="genderDropDownList2" runat="server" Height="25px" 
                Width="205px">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label11" runat="server" style="font-size: medium" 
                Text="Nationality:"></asp:Label>
        </td>
        <td>
                                <asp:DropDownList ID="dropNationality" runat="server" 
                Width="205px" Height="25px">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>Nigeria</asp:ListItem>
                                    <asp:ListItem>Ghana</asp:ListItem>
                                </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label13" runat="server" style="font-size: medium" 
                Text="Department:"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="deptDropDownList3" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="DEPT_NAME" 
                DataValueField="DEPT_ID" Height="25px" Width="205px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:HDBMS %>" 
                SelectCommand="SELECT [DEPT_NAME], [DEPT_ID] FROM [DEPARMENT_TBL]">
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label12" runat="server" style="font-size: medium" 
                Text="Old Email Address:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" Height="25px" Width="200px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" style="font-size: medium" 
                Text="Mobile Number:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtMobileNo" runat="server" Height="25px" 
                Width="200px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
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
            <asp:Button ID="btnCreateAccount" runat="server" 
                style="font-weight: 700; font-style: italic" Text="CREATE ACCOUNT" 
                Width="130px" Height="30px" onclick="btnCreateAccount_Click" />
            <asp:Button ID="btnHome" runat="server" Height="30px" 
                style="font-weight: 700; font-style: italic; color: #990000" Text="Homepage" 
                Width="130px" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="lblMsg" runat="server" style="font-size: medium"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <UltraWebGrid:UltraWebGrid ID="UltraWebGrid1" runat="server" Height="200px" 
                Width="561px">
                                    
<displaylayout allowcolsizingdefault="Free" allowcolumnmovingdefault="OnServer" 
                allowdeletedefault="Yes" allowsortingdefault="OnClient" 
                allowupdatedefault="Yes" autogeneratecolumns="False" 
                bordercollapsedefault="Separate" headerclickactiondefault="SortMulti" 
                name="UltraWebGrid1" rowheightdefault="20px" selecttyperowdefault="Single" 
                stationarymargins="Header" stationarymarginsoutlookgroupby="True" 
                tablelayout="Fixed" version="4.00" viewtype="OutlookGroupBy">
                                        
<framestyle backcolor="Window" bordercolor="#999999" borderstyle="None" borderwidth="3px" 
                cursor="Default" font-names="Microsoft Sans Serif" font-size="8.25pt" 
                height="200px" width="561px">
                                        </framestyle>
                                        

<rowalternatestyledefault backcolor="#E9E9F7">
                                            
<borderdetails colorleft="233, 233, 247" colortop="233, 233, 247" />
                                        
</rowalternatestyledefault>
                                        

<pager minimumpagesfordisplay="2">
                                            
<PagerStyle BackColor="LightGray" BorderStyle="Solid" BorderWidth="1px">
                                            
<borderdetails colorleft="White" colortop="White" widthleft="1px" widthtop="1px" />
                                            
</PagerStyle>
                                        
</pager>
                                        

<editcellstyledefault borderstyle="None" borderwidth="0px">
                                        </editcellstyledefault>
                                        

<footerstyledefault backcolor="LightGray" borderstyle="Solid" borderwidth="1px">
                                            
<borderdetails colorleft="White" colortop="White" widthleft="1px" widthtop="1px" />
                                        
</footerstyledefault>
                                        

<headerstyledefault backcolor="#5BA1C2" bordercolor="Black" borderstyle="Solid" 
                forecolor="White" horizontalalign="Left">
                                            
<borderdetails colorleft="White" colortop="White" widthleft="1px" widthtop="1px" />
                                        
</headerstyledefault>
                                        

<rowstyledefault backcolor="#BCDAE8" bordercolor="Gray" borderstyle="Solid" 
                borderwidth="1px" font-names="Microsoft Sans Serif" font-size="8.25pt">
                                            
<padding left="3px" />
                                            

<borderdetails colorleft="188, 218, 232" colortop="188, 218, 232" />
                                        
</rowstyledefault>
                                        

<groupbyrowstyledefault backcolor="Control" bordercolor="Window">
                                        </groupbyrowstyledefault>
                                        

<selectedrowstyledefault backcolor="#9BBCCC" forecolor="White">
                                        </selectedrowstyledefault>
                                        

<groupbybox>
                                            
<boxstyle backcolor="ActiveBorder" bordercolor="Window">
                                            </boxstyle>
                                        
</groupbybox>
                                        

<addnewbox hidden="False">
                                            
<boxstyle backcolor="Window" bordercolor="InactiveCaption" borderstyle="Solid" 
                borderwidth="1px">
                                                
<borderdetails colorleft="White" colortop="White" widthleft="1px" widthtop="1px" />
                                            
</boxstyle>
                                        
</addnewbox>
                                        

<activationobject bordercolor="Black" borderstyle="Dotted" borderwidth="">
                                        </activationobject>
                                        

<filteroptionsdefault>
                                            
<filterdropdownstyle backcolor="White" bordercolor="Silver" borderstyle="Solid" 
                borderwidth="1px" customrules="overflow:auto;" 
                font-names="Verdana,Arial,Helvetica,sans-serif" font-size="11px" height="300px" 
                width="200px">
                                                
<padding left="2px" />
                                            
</filterdropdownstyle>
                                            

<filterhighlightrowstyle backcolor="#151C55" forecolor="White">
                                            </filterhighlightrowstyle>
                                            

<filteroperanddropdownstyle backcolor="White" bordercolor="Silver" borderstyle="Solid" 
                borderwidth="1px" customrules="overflow:auto;" 
                font-names="Verdana,Arial,Helvetica,sans-serif" font-size="11px">
                                                
<padding left="2px" />
                                            
</filteroperanddropdownstyle>
                                        
</filteroptionsdefault>
                                    
</displaylayout>
                                    
<bands>
                                        
<UltraWebGrid:UltraGridBand>
                                            <Columns>
                                                
<UltraWebGrid:UltraGridColumn BaseColumnName="STOCK_ID" Width="45px">
                                                    
<header caption="Item_ID">
                                                    </header>
                                                
</UltraWebGrid:UltraGridColumn>
                                                
<UltraWebGrid:UltraGridColumn BaseColumnName="ITEM">
                                                    
<header caption="Item Name">
                                                        
<rowlayoutcolumninfo originx="1" />
                                                    
</header>
                                                    

<footer>
                                                        
<rowlayoutcolumninfo originx="1" />
                                                    
</footer>
                                                
</UltraWebGrid:UltraGridColumn>
                                                
<UltraWebGrid:UltraGridColumn BaseColumnName="ITEM_STATUS">
                                                    
<header caption="Item Status">
                                                        
<rowlayoutcolumninfo originx="2" />
                                                    
</header>
                                                    

<footer>
                                                        
<rowlayoutcolumninfo originx="2" />
                                                    
</footer>
                                                
</UltraWebGrid:UltraGridColumn>
                                                
<UltraWebGrid:UltraGridColumn Type="CheckBox" Width="30px">
                                                    
<header caption="Del">
                                                        
<rowlayoutcolumninfo originx="3" />
                                                    
</header>
                                                    

<footer>
                                                        
<rowlayoutcolumninfo originx="3" />
                                                    
</footer>
                                                
</UltraWebGrid:UltraGridColumn>
                                                
                                                
                                                
                                                
                                            
</Columns>
                                            

<addnewrow view="NotSet" visible="NotSet">
                                            </addnewrow>
                                        
</UltraWebGrid:UltraGridBand>
                                    
</bands>
                                
</UltraWebGrid:UltraWebGrid>
        </td>
    </tr>
</table>
</asp:Content>

