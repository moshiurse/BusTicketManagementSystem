<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Travel_System.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        text-align: center;
        font-size: x-large;
    }
        .auto-style2 {
            margin-left: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style2">Here Is Our Buses List</p>
        <p class="auto-style1">
            <asp:GridView ID="busInfoGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="busID" OnSelectedIndexChanged="busInfoGrid_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="busID" HeaderText="busID" ReadOnly="True" SortExpression="busID" />
                    <asp:BoundField DataField="route" HeaderText="route" SortExpression="route" />
                    <asp:BoundField DataField="capacity" HeaderText="capacity" SortExpression="capacity" />
                    <asp:BoundField DataField="arrTime" HeaderText="arrTime" SortExpression="arrTime" />
                    <asp:BoundField DataField="deptTime" HeaderText="deptTime" SortExpression="deptTime" />
                    <asp:BoundField DataField="busType" HeaderText="busType" SortExpression="busType" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                </Columns>
            </asp:GridView>
        </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" ProviderName="<%$ ConnectionStrings:constr.ProviderName %>" SelectCommand="SELECT * FROM [BusInfo]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    <br />
    Search Bus By Id :
    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" ToolTip="Search By ID" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="busID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="busID" HeaderText="busID" ReadOnly="True" SortExpression="busID" />
            <asp:BoundField DataField="route" HeaderText="route" SortExpression="route" />
            <asp:BoundField DataField="capacity" HeaderText="capacity" SortExpression="capacity" />
            <asp:BoundField DataField="arrTime" HeaderText="arrTime" SortExpression="arrTime" />
            <asp:BoundField DataField="deptTime" HeaderText="deptTime" SortExpression="deptTime" />
            <asp:BoundField DataField="busType" HeaderText="busType" SortExpression="busType" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" ProviderName="<%$ ConnectionStrings:constr.ProviderName %>" SelectCommand="SELECT * FROM [BusInfo] WHERE ([busID] = @busID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtSearch" Name="busID" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
