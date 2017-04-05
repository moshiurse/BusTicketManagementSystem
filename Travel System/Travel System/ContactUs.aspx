<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Travel_System.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                Your Email :
            </td>
            <td>
                <asp:TextBox ID="txtContactEmail" runat="server" Width="203px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Contact Type :
            </td>
            <td>
                <asp:DropDownList ID="ddlContactType" runat="server">
                    <asp:ListItem>Complain</asp:ListItem>
                    <asp:ListItem>Suggetion</asp:ListItem>
                    <asp:ListItem>Request</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Write Your Opinion:
            </td>
            <td>
                <asp:TextBox ID="txtContactOpinion" runat="server" Height="77px" Width="190px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnSubmitContact" runat="server" Text="Button" OnClick="btnSubmitContact_Click" />
            </td>
        </tr>
    </table>

    </asp:Content>
