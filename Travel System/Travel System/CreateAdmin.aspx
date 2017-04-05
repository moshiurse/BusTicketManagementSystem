<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CreateAdmin.aspx.cs" Inherits="Travel_System.CreateAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    UserName:
    <asp:TextBox ID="txtAdminUser" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAdminUser" ErrorMessage="Please Enter UserName" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    PassWord&nbsp; :<asp:TextBox ID="txtAdminPass" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAdminPass" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    Retype Password:
    <asp:TextBox ID="txtRetypePass" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRetypePass" Display="Dynamic" ErrorMessage="Please Retype Password" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtAdminPass" ControlToValidate="txtRetypePass" Display="Dynamic" ErrorMessage="Password should be same" ForeColor="Red"></asp:CompareValidator>
</p>
<p>
    Email :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtAdminEmail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAdminEmail" ErrorMessage="Please Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtAdminEmail"></asp:RegularExpressionValidator>
</p>
    <div style="margin-left: 80px">
    <asp:Button ID="btnCreateAdmin" runat="server" Height="39px" OnClick="btnCreateAdmin_Click" Text="Create Admin" Width="94px" />
</div>
<p>
    &nbsp;</p>
</asp:Content>
