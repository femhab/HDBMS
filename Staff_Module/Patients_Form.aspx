<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Patients_Form.aspx.cs" Inherits="Staff_Module_Patients_Form" %>

<%@ Register assembly="Infragistics4.WebUI.UltraWebGrid.v10.3, Version=10.3.20103.1013, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" namespace="Infragistics.WebUI.UltraWebGrid" tagprefix="igtbl" %>

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
        .style3
        {
            width: 65px;
        }
        .style30
        {
            height: 23px;
        }
        .style31
        {
            width: 217px;
        }
        .style33
        {
            width: 174px;
            height: 23px;
        }
        .style34
        {
            width: 174px;
        }
        .style35
        {
            color: #000000;
        }
        .style36
        {
            height: 23px;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: 700; text-align: center; color: #FFFFFF; background-color: #4682B4" 
                    Text="PATIENT'S FORM" Width="810px"></asp:Label>
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
                <asp:Panel ID="Panel1" runat="server" BorderColor="SteelBlue" 
                    BorderStyle="Dashed" Width="820px">
                    <table class="style1">
                        <tr>
                            <td class="style3">
                                <asp:Label ID="Label2" runat="server" 
                                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                    Text="Welcome" Width="80px"></asp:Label>
                            </td>
                            <td class="style31">
                                <asp:Label ID="lblPatientName" runat="server" style="color: #3333FF"></asp:Label>
                            </td>
                            <td rowspan="2">
                                <asp:Image ID="imgPassport" runat="server" Height="80px" style="margin-left: 0px" 
                                    Width="100px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style31">
                                <asp:Label ID="lblPatientID" runat="server" style="color: #3333FF" 
                                    Text="Patient ID"></asp:Label>
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
            <td colspan="2">
                <table class="style1">
                    <tr>
                        <td colspan="2">
                            <asp:Panel ID="Panel2" runat="server" BackColor="Silver" Width="820px">
                                <table class="style1">
                                    <tr>
                                        <td class="style33">
                                            <asp:Label ID="Label69" runat="server" 
                                                style="font-size: medium; font-weight: 700;" 
                                                Text="Patient Details" CssClass="style36"></asp:Label>
                                        </td>
                                        <td class="style2">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style33">
                                            <asp:Label ID="Label6" runat="server" 
                                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                Text="Gender:" Width="80px" CssClass="style35"></asp:Label>
                                        </td>
                                        <td class="style2">
                                            <asp:Label ID="lblGender" runat="server" style="color: #3333FF"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style34">
                                            <asp:Label ID="Label8" runat="server" 
                                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                Text="Phone Number:" Width="130px" CssClass="style35"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblPhoneNumber" runat="server" style="color: #3333FF"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style34">
                                            <asp:Label ID="Label7" runat="server" 
                                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                Text="Email Address:" Width="130px" CssClass="style35"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblEmailAddress" runat="server" style="color: #3333FF"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style34">
                                            <asp:Label ID="Label9" runat="server" 
                                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                Text="Blood Group/Genotype:" Width="180px" CssClass="style35"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblBloodGroup" runat="server" style="color: #3333FF"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style34">
                                            <asp:Label ID="Label74" runat="server" 
                                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                Text="Status:" Width="180px" CssClass="style35"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblStatus" runat="server" style="color: #3333FF"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style34">
                                            <asp:Label ID="Label77" runat="server" 
                                                style="font-family: Arial, Helvetica, sans-serif; font-size: medium" 
                                                Text="Payment Status:" Width="180px" CssClass="style35"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label76" runat="server" style="color: #3333FF" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                        </td>
                        <td class="style2">
                        </td>
                    </tr>
                    <tr>
                        <td>
                                <asp:Label ID="Label70" runat="server" style="font-size: medium; font-weight: 700;" 
                                    Text="Reports" CssClass="style30"></asp:Label>
                            </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel3" runat="server">
                    <table class="style1">
                        <tr>
                            <td>
                                <asp:Label ID="Label14" runat="server" Text="Lab Report Grid" 
                                    style="font-weight: 700; font-size: large"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <igtbl:UltraWebGrid ID="UltraWebGrid1" runat="server" Height="200px" 
                                    Width="820px">
                                    <displaylayout allowcolsizingdefault="Free" allowcolumnmovingdefault="OnServer" 
                                        allowdeletedefault="Yes" allowrownumberingdefault="NotSet" 
                                        allowsortingdefault="OnClient" allowupdatedefault="Yes" 
                                        bordercollapsedefault="Separate" headerclickactiondefault="SortMulti" 
                                        name="UltraWebGrid1" rowheightdefault="20px" selecttyperowdefault="Single" 
                                        stationarymargins="Header" stationarymarginsoutlookgroupby="True" 
                                        tablelayout="Fixed" version="4.00" viewtype="OutlookGroupBy">
                                        <framestyle backcolor="#B5CFF7" bordercolor="#999999" borderwidth="3px" 
                                            cursor="Default" font-names="Microsoft Sans Serif" font-size="8.25pt" 
                                            height="200px" width="820px">
                                        </framestyle>
                                        <RowAlternateStyleDefault BackColor="LightSlateGray">
                                            <BorderDetails ColorLeft="LightSlateGray" ColorTop="LightSlateGray" />
                                        </RowAlternateStyleDefault>
                                        <pager minimumpagesfordisplay="2">
                                            <PagerStyle BackColor="LightGray" BorderStyle="Solid" BorderWidth="1px">
                                            <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                widthtop="1px" />
                                            </PagerStyle>
                                        </pager>
                                        <editcellstyledefault borderstyle="None" borderwidth="0px">
                                        </editcellstyledefault>
                                        <footerstyledefault backcolor="LightGray" borderstyle="Solid" borderwidth="1px">
                                            <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                widthtop="1px" />
                                        </footerstyledefault>
                                        <headerstyledefault backcolor="#8799AB" bordercolor="Black" borderstyle="Solid" 
                                            forecolor="White" horizontalalign="Left">
                                            <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                widthtop="1px" />
                                        </headerstyledefault>
                                        <rowstyledefault backcolor="White" bordercolor="Silver" borderstyle="Solid" 
                                            borderwidth="1px" font-names="Microsoft Sans Serif" font-size="8.25pt" 
                                            forecolor="Black">
                                            <padding left="3px" />
                                            <borderdetails colorleft="White" colortop="White" />
                                        </rowstyledefault>
                                        <groupbyrowstyledefault backcolor="#95B9F0" bordercolor="Window" 
                                            forecolor="Black">
                                        </groupbyrowstyledefault>
                                        <SelectedRowStyleDefault BackColor="#454B73" ForeColor="White">
                                        </SelectedRowStyleDefault>
                                        <groupbybox>
                                            <BandLabelStyle BackColor="#6372D4" ForeColor="White">
                                            </BandLabelStyle>
                                            <boxstyle backcolor="#B5CFF7" bordercolor="Window">
                                            </boxstyle>
                                        </groupbybox>
                                        <addnewbox hidden="False">
                                            <boxstyle backcolor="Window" bordercolor="InactiveCaption" borderstyle="Solid" 
                                                borderwidth="1px">
                                                <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                    widthtop="1px" />
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
                                            <filteroperanddropdownstyle backcolor="White" bordercolor="Silver" 
                                                borderstyle="Solid" borderwidth="1px" customrules="overflow:auto;" 
                                                font-names="Verdana,Arial,Helvetica,sans-serif" font-size="11px">
                                                <padding left="2px" />
                                            </filteroperanddropdownstyle>
                                        </filteroptionsdefault>
                                    </displaylayout>
                                    <bands>
                                        <igtbl:UltraGridBand>
                                            <addnewrow view="NotSet" visible="NotSet">
                                            </addnewrow>
                                        </igtbl:UltraGridBand>
                                    </bands>
                                </igtbl:UltraWebGrid>
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
            <td colspan="2">
                <asp:Panel ID="Panel4" runat="server">
                    <table class="style1">
                        <tr>
                            <td>
                                <asp:Label ID="Label15" runat="server" Text="Vital Signs Report Grid" 
                                    style="font-weight: 700; font-size: large"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <igtbl:UltraWebGrid ID="UltraWebGrid2" runat="server" Height="200px" 
                                    Width="820px">
                                    <displaylayout allowcolsizingdefault="Free" allowcolumnmovingdefault="OnServer" 
                                        allowdeletedefault="Yes" allowrownumberingdefault="NotSet" 
                                        allowsortingdefault="OnClient" allowupdatedefault="Yes" 
                                        bordercollapsedefault="Separate" headerclickactiondefault="SortMulti" 
                                        name="UltraWebGrid1" rowheightdefault="20px" selecttyperowdefault="Single" 
                                        stationarymargins="Header" stationarymarginsoutlookgroupby="True" 
                                        tablelayout="Fixed" version="4.00" viewtype="OutlookGroupBy">
                                        <framestyle backcolor="#B5CFF7" bordercolor="#999999" borderwidth="3px" 
                                            cursor="Default" font-names="Microsoft Sans Serif" font-size="8.25pt" 
                                            height="200px" width="820px">
                                        </framestyle>
                                        <RowAlternateStyleDefault BackColor="LightSlateGray">
                                            <BorderDetails ColorLeft="LightSlateGray" ColorTop="LightSlateGray" />
                                        </RowAlternateStyleDefault>
                                        <pager minimumpagesfordisplay="2">
                                            <PagerStyle BackColor="LightGray" BorderStyle="Solid" BorderWidth="1px">
                                            <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                widthtop="1px" />
                                            </PagerStyle>
                                        </pager>
                                        <editcellstyledefault borderstyle="None" borderwidth="0px">
                                        </editcellstyledefault>
                                        <footerstyledefault backcolor="LightGray" borderstyle="Solid" borderwidth="1px">
                                            <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                widthtop="1px" />
                                        </footerstyledefault>
                                        <headerstyledefault backcolor="#8799AB" bordercolor="Black" borderstyle="Solid" 
                                            forecolor="White" horizontalalign="Left">
                                            <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                widthtop="1px" />
                                        </headerstyledefault>
                                        <rowstyledefault backcolor="White" bordercolor="Silver" borderstyle="Solid" 
                                            borderwidth="1px" font-names="Microsoft Sans Serif" font-size="8.25pt" 
                                            forecolor="Black">
                                            <padding left="3px" />
                                            <borderdetails colorleft="White" colortop="White" />
                                        </rowstyledefault>
                                        <groupbyrowstyledefault backcolor="#95B9F0" bordercolor="Window" 
                                            forecolor="Black">
                                        </groupbyrowstyledefault>
                                        <SelectedRowStyleDefault BackColor="#454B73" ForeColor="White">
                                        </SelectedRowStyleDefault>
                                        <groupbybox>
                                            <BandLabelStyle BackColor="#6372D4" ForeColor="White">
                                            </BandLabelStyle>
                                            <boxstyle backcolor="#B5CFF7" bordercolor="Window">
                                            </boxstyle>
                                        </groupbybox>
                                        <addnewbox hidden="False">
                                            <boxstyle backcolor="Window" bordercolor="InactiveCaption" borderstyle="Solid" 
                                                borderwidth="1px">
                                                <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                    widthtop="1px" />
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
                                            <filteroperanddropdownstyle backcolor="White" bordercolor="Silver" 
                                                borderstyle="Solid" borderwidth="1px" customrules="overflow:auto;" 
                                                font-names="Verdana,Arial,Helvetica,sans-serif" font-size="11px">
                                                <padding left="2px" />
                                            </filteroperanddropdownstyle>
                                        </filteroptionsdefault>
                                    </displaylayout>
                                    <bands>
                                        <igtbl:UltraGridBand>
                                            <addnewrow view="NotSet" visible="NotSet">
                                            </addnewrow>
                                        </igtbl:UltraGridBand>
                                    </bands>
                                </igtbl:UltraWebGrid>
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
            <td colspan="2">
                <asp:Panel ID="Panel5" runat="server">
                    <table class="style1">
                        <tr>
                            <td>
                                <asp:Label ID="Label16" runat="server" Text="Doctors Report Grid" 
                                    style="font-weight: 700; font-size: large"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <igtbl:UltraWebGrid ID="UltraWebGrid3" runat="server" Height="200px" 
                                    Width="820px">
                                    <displaylayout allowcolsizingdefault="Free" allowcolumnmovingdefault="OnServer" 
                                        allowdeletedefault="Yes" allowrownumberingdefault="NotSet" 
                                        allowsortingdefault="OnClient" allowupdatedefault="Yes" 
                                        bordercollapsedefault="Separate" headerclickactiondefault="SortMulti" 
                                        name="UltraWebGrid1" rowheightdefault="20px" selecttyperowdefault="Single" 
                                        stationarymargins="Header" stationarymarginsoutlookgroupby="True" 
                                        tablelayout="Fixed" version="4.00" viewtype="OutlookGroupBy">
                                        <framestyle backcolor="#B5CFF7" bordercolor="#999999" borderwidth="3px" 
                                            cursor="Default" font-names="Microsoft Sans Serif" font-size="8.25pt" 
                                            height="200px" width="820px">
                                        </framestyle>
                                        <RowAlternateStyleDefault BackColor="LightSlateGray">
                                            <BorderDetails ColorLeft="LightSlateGray" ColorTop="LightSlateGray" />
                                        </RowAlternateStyleDefault>
                                        <pager minimumpagesfordisplay="2">
                                            <PagerStyle BackColor="LightGray" BorderStyle="Solid" BorderWidth="1px">
                                            <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                widthtop="1px" />
                                            </PagerStyle>
                                        </pager>
                                        <editcellstyledefault borderstyle="None" borderwidth="0px">
                                        </editcellstyledefault>
                                        <footerstyledefault backcolor="LightGray" borderstyle="Solid" borderwidth="1px">
                                            <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                widthtop="1px" />
                                        </footerstyledefault>
                                        <headerstyledefault backcolor="#8799AB" bordercolor="Black" borderstyle="Solid" 
                                            forecolor="White" horizontalalign="Left">
                                            <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                widthtop="1px" />
                                        </headerstyledefault>
                                        <rowstyledefault backcolor="White" bordercolor="Silver" borderstyle="Solid" 
                                            borderwidth="1px" font-names="Microsoft Sans Serif" font-size="8.25pt" 
                                            forecolor="Black">
                                            <padding left="3px" />
                                            <borderdetails colorleft="White" colortop="White" />
                                        </rowstyledefault>
                                        <groupbyrowstyledefault backcolor="#95B9F0" bordercolor="Window" 
                                            forecolor="Black">
                                        </groupbyrowstyledefault>
                                        <SelectedRowStyleDefault BackColor="#454B73" ForeColor="White">
                                        </SelectedRowStyleDefault>
                                        <groupbybox>
                                            <BandLabelStyle BackColor="#6372D4" ForeColor="White">
                                            </BandLabelStyle>
                                            <boxstyle backcolor="#B5CFF7" bordercolor="Window">
                                            </boxstyle>
                                        </groupbybox>
                                        <addnewbox hidden="False">
                                            <boxstyle backcolor="Window" bordercolor="InactiveCaption" borderstyle="Solid" 
                                                borderwidth="1px">
                                                <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                    widthtop="1px" />
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
                                            <filteroperanddropdownstyle backcolor="White" bordercolor="Silver" 
                                                borderstyle="Solid" borderwidth="1px" customrules="overflow:auto;" 
                                                font-names="Verdana,Arial,Helvetica,sans-serif" font-size="11px">
                                                <padding left="2px" />
                                            </filteroperanddropdownstyle>
                                        </filteroptionsdefault>
                                    </displaylayout>
                                    <bands>
                                        <igtbl:UltraGridBand>
                                            <addnewrow view="NotSet" visible="NotSet">
                                            </addnewrow>
                                        </igtbl:UltraGridBand>
                                    </bands>
                                </igtbl:UltraWebGrid>
                            </td>
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
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel6" runat="server">
                    <table class="style1">
                        <tr>
                            <td>
                                <asp:Label ID="Label17" runat="server" Text="Prescription Report Grid" 
                                    style="font-weight: 700; font-size: large"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <igtbl:UltraWebGrid ID="UltraWebGrid4" runat="server" Height="200px" 
                                    Width="820px">
                                    <displaylayout allowcolsizingdefault="Free" allowcolumnmovingdefault="OnServer" 
                                        allowdeletedefault="Yes" allowrownumberingdefault="NotSet" 
                                        allowsortingdefault="OnClient" allowupdatedefault="Yes" 
                                        bordercollapsedefault="Separate" headerclickactiondefault="SortMulti" 
                                        name="UltraWebGrid1" rowheightdefault="20px" selecttyperowdefault="Single" 
                                        stationarymargins="Header" stationarymarginsoutlookgroupby="True" 
                                        tablelayout="Fixed" version="4.00" viewtype="OutlookGroupBy">
                                        <framestyle backcolor="#B5CFF7" bordercolor="#999999" borderwidth="3px" 
                                            cursor="Default" font-names="Microsoft Sans Serif" font-size="8.25pt" 
                                            height="200px" width="820px">
                                        </framestyle>
                                        <RowAlternateStyleDefault BackColor="LightSlateGray">
                                            <BorderDetails ColorLeft="LightSlateGray" ColorTop="LightSlateGray" />
                                        </RowAlternateStyleDefault>
                                        <pager minimumpagesfordisplay="2">
                                            <PagerStyle BackColor="LightGray" BorderStyle="Solid" BorderWidth="1px">
                                            <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                widthtop="1px" />
                                            </PagerStyle>
                                        </pager>
                                        <editcellstyledefault borderstyle="None" borderwidth="0px">
                                        </editcellstyledefault>
                                        <footerstyledefault backcolor="LightGray" borderstyle="Solid" borderwidth="1px">
                                            <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                widthtop="1px" />
                                        </footerstyledefault>
                                        <headerstyledefault backcolor="#8799AB" bordercolor="Black" borderstyle="Solid" 
                                            forecolor="White" horizontalalign="Left">
                                            <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                widthtop="1px" />
                                        </headerstyledefault>
                                        <rowstyledefault backcolor="White" bordercolor="Silver" borderstyle="Solid" 
                                            borderwidth="1px" font-names="Microsoft Sans Serif" font-size="8.25pt" 
                                            forecolor="Black">
                                            <padding left="3px" />
                                            <borderdetails colorleft="White" colortop="White" />
                                        </rowstyledefault>
                                        <groupbyrowstyledefault backcolor="#95B9F0" bordercolor="Window" 
                                            forecolor="Black">
                                        </groupbyrowstyledefault>
                                        <SelectedRowStyleDefault BackColor="#454B73" ForeColor="White">
                                        </SelectedRowStyleDefault>
                                        <groupbybox>
                                            <BandLabelStyle BackColor="#6372D4" ForeColor="White">
                                            </BandLabelStyle>
                                            <boxstyle backcolor="#B5CFF7" bordercolor="Window">
                                            </boxstyle>
                                        </groupbybox>
                                        <addnewbox hidden="False">
                                            <boxstyle backcolor="Window" bordercolor="InactiveCaption" borderstyle="Solid" 
                                                borderwidth="1px">
                                                <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                    widthtop="1px" />
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
                                            <filteroperanddropdownstyle backcolor="White" bordercolor="Silver" 
                                                borderstyle="Solid" borderwidth="1px" customrules="overflow:auto;" 
                                                font-names="Verdana,Arial,Helvetica,sans-serif" font-size="11px">
                                                <padding left="2px" />
                                            </filteroperanddropdownstyle>
                                        </filteroptionsdefault>
                                    </displaylayout>
                                    <bands>
                                        <igtbl:UltraGridBand>
                                            <addnewrow view="NotSet" visible="NotSet">
                                            </addnewrow>
                                        </igtbl:UltraGridBand>
                                    </bands>
                                </igtbl:UltraWebGrid>
                            </td>
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
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Panel ID="Panel7" runat="server">
                    <table class="style1">
                        <tr>
                            <td>
                                <asp:Label ID="Label18" runat="server" Text="Services Report Grid" 
                                    style="font-weight: 700; font-size: large"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <igtbl:UltraWebGrid ID="UltraWebGrid5" runat="server" Height="200px" 
                                    Width="820px">
                                    <displaylayout allowcolsizingdefault="Free" allowcolumnmovingdefault="OnServer" 
                                        allowdeletedefault="Yes" allowrownumberingdefault="NotSet" 
                                        allowsortingdefault="OnClient" allowupdatedefault="Yes" 
                                        bordercollapsedefault="Separate" headerclickactiondefault="SortMulti" 
                                        name="UltraWebGrid1" rowheightdefault="20px" selecttyperowdefault="Single" 
                                        stationarymargins="Header" stationarymarginsoutlookgroupby="True" 
                                        tablelayout="Fixed" version="4.00" viewtype="OutlookGroupBy">
                                        <framestyle backcolor="#B5CFF7" bordercolor="#999999" borderwidth="3px" 
                                            cursor="Default" font-names="Microsoft Sans Serif" font-size="8.25pt" 
                                            height="200px" width="820px">
                                        </framestyle>
                                        <RowAlternateStyleDefault BackColor="LightSlateGray">
                                            <BorderDetails ColorLeft="LightSlateGray" ColorTop="LightSlateGray" />
                                        </RowAlternateStyleDefault>
                                        <pager minimumpagesfordisplay="2">
                                            <PagerStyle BackColor="LightGray" BorderStyle="Solid" BorderWidth="1px">
                                            <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                widthtop="1px" />
                                            </PagerStyle>
                                        </pager>
                                        <editcellstyledefault borderstyle="None" borderwidth="0px">
                                        </editcellstyledefault>
                                        <footerstyledefault backcolor="LightGray" borderstyle="Solid" borderwidth="1px">
                                            <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                widthtop="1px" />
                                        </footerstyledefault>
                                        <headerstyledefault backcolor="#8799AB" bordercolor="Black" borderstyle="Solid" 
                                            forecolor="White" horizontalalign="Left">
                                            <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                widthtop="1px" />
                                        </headerstyledefault>
                                        <rowstyledefault backcolor="White" bordercolor="Silver" borderstyle="Solid" 
                                            borderwidth="1px" font-names="Microsoft Sans Serif" font-size="8.25pt" 
                                            forecolor="Black">
                                            <padding left="3px" />
                                            <borderdetails colorleft="White" colortop="White" />
                                        </rowstyledefault>
                                        <groupbyrowstyledefault backcolor="#95B9F0" bordercolor="Window" 
                                            forecolor="Black">
                                        </groupbyrowstyledefault>
                                        <SelectedRowStyleDefault BackColor="#454B73" ForeColor="White">
                                        </SelectedRowStyleDefault>
                                        <groupbybox>
                                            <BandLabelStyle BackColor="#6372D4" ForeColor="White">
                                            </BandLabelStyle>
                                            <boxstyle backcolor="#B5CFF7" bordercolor="Window">
                                            </boxstyle>
                                        </groupbybox>
                                        <addnewbox hidden="False">
                                            <boxstyle backcolor="Window" bordercolor="InactiveCaption" borderstyle="Solid" 
                                                borderwidth="1px">
                                                <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                    widthtop="1px" />
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
                                            <filteroperanddropdownstyle backcolor="White" bordercolor="Silver" 
                                                borderstyle="Solid" borderwidth="1px" customrules="overflow:auto;" 
                                                font-names="Verdana,Arial,Helvetica,sans-serif" font-size="11px">
                                                <padding left="2px" />
                                            </filteroperanddropdownstyle>
                                        </filteroptionsdefault>
                                    </displaylayout>
                                    <bands>
                                        <igtbl:UltraGridBand>
                                            <addnewrow view="NotSet" visible="NotSet">
                                            </addnewrow>
                                        </igtbl:UltraGridBand>
                                    </bands>
                                </igtbl:UltraWebGrid>
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
            <td colspan="2">
                <asp:Panel ID="Panel8" runat="server">
                    <table class="style1">
                        <tr>
                            <td>
                                <asp:Label ID="Label19" runat="server" Text="Billing Report Grid" 
                                    style="font-weight: 700; font-size: large"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <igtbl:UltraWebGrid ID="UltraWebGrid6" runat="server" Height="200px" 
                                    Width="820px">
                                    <displaylayout allowcolsizingdefault="Free" allowcolumnmovingdefault="OnServer" 
                                        allowdeletedefault="Yes" allowrownumberingdefault="NotSet" 
                                        allowsortingdefault="OnClient" allowupdatedefault="Yes" 
                                        bordercollapsedefault="Separate" headerclickactiondefault="SortMulti" 
                                        name="UltraWebGrid1" rowheightdefault="20px" selecttyperowdefault="Single" 
                                        stationarymargins="Header" stationarymarginsoutlookgroupby="True" 
                                        tablelayout="Fixed" version="4.00" viewtype="OutlookGroupBy">
                                        <framestyle backcolor="#B5CFF7" bordercolor="#999999" borderwidth="3px" 
                                            cursor="Default" font-names="Microsoft Sans Serif" font-size="8.25pt" 
                                            height="200px" width="820px">
                                        </framestyle>
                                        <RowAlternateStyleDefault BackColor="LightSlateGray">
                                            <BorderDetails ColorLeft="LightSlateGray" ColorTop="LightSlateGray" />
                                        </RowAlternateStyleDefault>
                                        <pager minimumpagesfordisplay="2">
                                            <PagerStyle BackColor="LightGray" BorderStyle="Solid" BorderWidth="1px">
                                            <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                widthtop="1px" />
                                            </PagerStyle>
                                        </pager>
                                        <editcellstyledefault borderstyle="None" borderwidth="0px">
                                        </editcellstyledefault>
                                        <footerstyledefault backcolor="LightGray" borderstyle="Solid" borderwidth="1px">
                                            <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                widthtop="1px" />
                                        </footerstyledefault>
                                        <headerstyledefault backcolor="#8799AB" bordercolor="Black" borderstyle="Solid" 
                                            forecolor="White" horizontalalign="Left">
                                            <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                widthtop="1px" />
                                        </headerstyledefault>
                                        <rowstyledefault backcolor="White" bordercolor="Silver" borderstyle="Solid" 
                                            borderwidth="1px" font-names="Microsoft Sans Serif" font-size="8.25pt" 
                                            forecolor="Black">
                                            <padding left="3px" />
                                            <borderdetails colorleft="White" colortop="White" />
                                        </rowstyledefault>
                                        <groupbyrowstyledefault backcolor="#95B9F0" bordercolor="Window" 
                                            forecolor="Black">
                                        </groupbyrowstyledefault>
                                        <SelectedRowStyleDefault BackColor="#454B73" ForeColor="White">
                                        </SelectedRowStyleDefault>
                                        <groupbybox>
                                            <BandLabelStyle BackColor="#6372D4" ForeColor="White">
                                            </BandLabelStyle>
                                            <boxstyle backcolor="#B5CFF7" bordercolor="Window">
                                            </boxstyle>
                                        </groupbybox>
                                        <addnewbox hidden="False">
                                            <boxstyle backcolor="Window" bordercolor="InactiveCaption" borderstyle="Solid" 
                                                borderwidth="1px">
                                                <borderdetails colorleft="White" colortop="White" widthleft="1px" 
                                                    widthtop="1px" />
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
                                            <filteroperanddropdownstyle backcolor="White" bordercolor="Silver" 
                                                borderstyle="Solid" borderwidth="1px" customrules="overflow:auto;" 
                                                font-names="Verdana,Arial,Helvetica,sans-serif" font-size="11px">
                                                <padding left="2px" />
                                            </filteroperanddropdownstyle>
                                        </filteroptionsdefault>
                                    </displaylayout>
                                    <bands>
                                        <igtbl:UltraGridBand>
                                            <addnewrow view="NotSet" visible="NotSet">
                                            </addnewrow>
                                        </igtbl:UltraGridBand>
                                    </bands>
                                </igtbl:UltraWebGrid>
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
    </table>
</asp:Content>

