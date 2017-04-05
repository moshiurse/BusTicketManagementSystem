<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Booked.aspx.cs" Inherits="Travel_System.Booked" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            font-size: x-large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <span class="auto-style3">Bus No :&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblBusNo" runat="server"></asp:Label>
    </span>
</p>
<p>
    <span class="auto-style3">Customer Name :<asp:Label ID="lblCusName" runat="server" Text="Label"></asp:Label>
    </span>
</p>
<p>
    <span class="auto-style3">Customer Phone:<asp:Label ID="lblCusPhone" runat="server" Text="Label"></asp:Label>
    </span>
</p>
<p>
    <span class="auto-style3">Customer Email :<asp:Label ID="lblCusEmail" runat="server" Text="Label"></asp:Label>
    </span>
    <br />
    <span class="auto-style3">Seat :<asp:Label ID="lblSeat" runat="server" Text="Label"></asp:Label>
    </span>
</p>
    <span class="auto-style3">Date:
<asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label>
    </span>
</asp:Content>
