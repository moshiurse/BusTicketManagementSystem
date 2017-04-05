<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateBus.aspx.cs" Inherits="Travel_System.UpdateBus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style3 {
        width: 10px;
    }
    .auto-style1 {
        height: 26px;
    }
    .auto-style4 {
        height: 26px;
        width: 10px;
    }
    .auto-style2 {
        height: 39px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>Bus ID :
                </td>
            <td>
                <asp:TextBox ID="txtUpdateId" runat="server" Width="134px"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Route :
                </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtUpdateRoute" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td>Capacity :
                </td>
            <td>
                <asp:TextBox ID="txtUpdateCapacity" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td>Arraival Time :
                </td>
            <td>
                <asp:TextBox ID="txtUpdateArrTime" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td>Departure Time :
                </td>
            <td>
                <asp:TextBox ID="txtUpdateDeptTime" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td>Bus Type :
                </td>
            <td>
                <asp:DropDownList ID="ddlUpdateBusType" runat="server">
                    <asp:ListItem>AC</asp:ListItem>
                    <asp:ListItem>NON-AC</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td>Price :
                </td>
            <td>
                <asp:TextBox ID="txtUpdatePrice" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="center" class="auto-style2">
                <asp:Button ID="btnUpdate" runat="server" Text="Update Bus" Height="35px" Width="80px" OnClick="btnUpdateBus_Click" />
            </td>
            
        </tr>
    </table>

    <br />
    <asp:Label ID="Label1" runat="server" Text="***" ForeColor="#00CC00" BackColor="#FFFF99"></asp:Label>
    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>
