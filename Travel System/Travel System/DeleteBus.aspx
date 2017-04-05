<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DeleteBus.aspx.cs" Inherits="Travel_System.DeleteBus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    Search ID For Delete :&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtDelete" runat="server"></asp:TextBox>
</p>
<p>
&nbsp;<asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click" Text="Delete" />
</p>
</asp:Content>
