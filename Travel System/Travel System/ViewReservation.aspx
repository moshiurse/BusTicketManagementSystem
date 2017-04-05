<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ViewReservation.aspx.cs" Inherits="Travel_System.ViewReservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TicketID,busID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="TicketID" HeaderText="TicketID" InsertVisible="False" ReadOnly="True" SortExpression="TicketID" />
                <asp:BoundField DataField="Seat" HeaderText="Seat" SortExpression="Seat" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="busID" HeaderText="busID" ReadOnly="True" SortExpression="busID" />
                <asp:BoundField DataField="route" HeaderText="route" SortExpression="route" />
                <asp:BoundField DataField="capacity" HeaderText="capacity" SortExpression="capacity" />
                <asp:BoundField DataField="arrTime" HeaderText="arrTime" SortExpression="arrTime" />
                <asp:BoundField DataField="deptTime" HeaderText="deptTime" SortExpression="deptTime" />
                <asp:BoundField DataField="busType" HeaderText="busType" SortExpression="busType" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
                <asp:BoundField DataField="CustomerEmail" HeaderText="CustomerEmail" SortExpression="CustomerEmail" />
                <asp:BoundField DataField="CustomerPhone" HeaderText="CustomerPhone" SortExpression="CustomerPhone" />
            </Columns>
        </asp:GridView>
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" ProviderName="<%$ ConnectionStrings:constr.ProviderName %>" SelectCommand="SELECT Reservation.TicketID, Reservation.Seat, Reservation.Date, BusInfo.busID, BusInfo.route, BusInfo.capacity, BusInfo.arrTime, BusInfo.deptTime, BusInfo.busType, BusInfo.price, Reservation.CustomerName, Reservation.CustomerEmail, Reservation.CustomerPhone FROM Reservation INNER JOIN BusInfo ON Reservation.BusID = BusInfo.busID"></asp:SqlDataSource>
</asp:Content>
