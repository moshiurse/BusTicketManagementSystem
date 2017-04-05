<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="CancelTicket.aspx.cs" Inherits="Travel_System.CancelTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
    Enter Ticket Id For Cancel :
    <asp:TextBox ID="txtCancelTicket" runat="server"></asp:TextBox>
</p>
<div style="margin-left: 160px">
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="lblCancel" runat="server" ForeColor="Red" Text="****"></asp:Label>
</div>
<p style="margin-left: 80px">
    &nbsp;</p>
</asp:Content>
