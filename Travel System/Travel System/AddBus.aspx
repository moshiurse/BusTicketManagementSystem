<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddBus.aspx.cs" Inherits="Travel_System.AddBus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 26px;
    }
    .auto-style2 {
        height: 39px;
    }
    .auto-style3 {
        width: 10px;
    }
    .auto-style4 {
        height: 26px;
        width: 10px;
    }
    .auto-style5 {
        height: 39px;
        width: 10px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    Bus ID :
                </td>
                <td>
                    <asp:TextBox ID="txtID" runat="server" Width="134px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtID" ErrorMessage="Please Enter Bus ID" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                
                <td>
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style1">
                    Route :
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtRoute" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                 <td class="auto-style1">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtRoute" ErrorMessage="Please Enter Route" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                 <td class="auto-style1">
                </td>
                <td class="auto-style1">
                </td>
                <td class="auto-style1">
                </td>
            </tr>
            <tr>
                <td>
                    Capacity :
                </td>
                <td>
                    <asp:TextBox ID="txtCapacity" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
                 <td>
                     <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtCapacity" ErrorMessage="Out Of Range" ForeColor="Red" MaximumValue="40" MinimumValue="10">*</asp:RangeValidator>
                </td>
                 <td>
                     &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtCapacity" ErrorMessage="Please Enter Capacity" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    Arraival Time :
                </td>
                <td>
                    <asp:TextBox ID="txtArrTime" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Arraival Time" ForeColor="Red" ControlToValidate="txtArrTime"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Departure Time :
                </td>
                <td>
                    <asp:TextBox ID="txtDeptTime" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Departure Time" ForeColor="Red" ControlToValidate="txtDeptTime"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    Bus Type :
                </td>
                <td>
                    <asp:DropDownList ID="ddlbusType" runat="server">
                        <asp:ListItem>AC</asp:ListItem>
                        <asp:ListItem>NON-AC</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
                </tr>
                <tr>
                <td>
                    Price :
                </td>
                <td>
                    <asp:TextBox ID="txtPrice" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtPrice" ErrorMessage="RangeValidator" ForeColor="Red" MaximumValue="300" MinimumValue="100">*</asp:RangeValidator>
                </td>
                     <td>
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Price" ForeColor="Red" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                
                <td colspan="2" align="center" class="auto-style2">
                    <asp:Button ID="btnAddBus" runat="server" Text="Add Bus" Height="35px" Width="80px" OnClick="btnAddBus_Click" />
                </td>
                <td colspan="1" align="center" class="auto-style2">
                    &nbsp;</td>
                <td align="center" class="auto-style5">
                </td>
            </tr>
        </table>

        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="****" ForeColor="Lime" BackColor="Yellow"></asp:Label>
        <br />
    </div>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" />
</asp:Content>
