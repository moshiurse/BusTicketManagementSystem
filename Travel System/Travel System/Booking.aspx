<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="Travel_System.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            font-size: xx-large;
            margin-left: 360px;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            margin-left: 200px;
        }
        .auto-style5 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <h1 class="auto-style2">
        Booking seat</h1>
    <span class="auto-style3">Bus No :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
<asp:DropDownList ID="ddlBusId" runat="server" DataSourceID="SqlDataSource1" DataTextField="busID" DataValueField="busID">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" ProviderName="<%$ ConnectionStrings:constr.ProviderName %>" SelectCommand="SELECT [busID] FROM [BusInfo]"></asp:SqlDataSource>
    <br class="auto-style3" />
    <span class="auto-style3">Customer Name : </span>
    <asp:TextBox ID="txtCusName" runat="server" OnTextChanged="txtCusName_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCusName" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <span class="auto-style3">Customer Phone:</span>
    <asp:TextBox ID="txtCusPhone" runat="server" TextMode="Phone"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCusPhone" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <span class="auto-style3">Customer Email :</span><asp:TextBox ID="txtCusEmail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCusEmail" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCusEmail" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br />
    <span class="auto-style3">Seat :<asp:DropDownList ID="ddlSeat" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
        <asp:ListItem>9</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlSeat" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
    <br />
<br />
    <br />
    <div class="auto-style4">
        <asp:Button ID="btnConfirmReserve" runat="server" CssClass="auto-style5" Height="67px" OnClick="Button1_Click" Text="Confirm Reservation" Width="178px" />
    </div>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblConfirmed" runat="server"></asp:Label>
    <br />
        <br />
    Bus No :<asp:Label ID="lblBusNo" runat="server" Text="Label"></asp:Label>
    <br class="auto-style3" />
    Customer Name :&nbsp;&nbsp;<asp:Label ID="lblCustomerName" runat="server" Text="Label"></asp:Label>
    <br />
    Customer Phone:&nbsp;<asp:Label ID="lblCustomerPhone" runat="server" Text="Label"></asp:Label>
    <br />
    Customer Email :<asp:Label ID="lblCustomerEmail" runat="server" Text="Label"></asp:Label>
    <br />
    Seat :<asp:Label ID="lblSeatNo" runat="server" Text="Label"></asp:Label>
    <br />
    Date:&nbsp;&nbsp;&nbsp;</span>
    <asp:Label ID="lblDateNo" runat="server" Text="Label"></asp:Label>
</asp:Content>
