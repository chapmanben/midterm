<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="salesreps.aspx.cs" Inherits="COMP2007Midterm.salesreps" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="well">
        <h1>Sales Representatives</h1>
        <a href="salesrep.aspx">Add Sales Representative</a>       
        
        <asp:GridView ID="grdSalesReps" runat="server" CssClass="table table-striped table-hover"
            AutoGenerateColumns="false" DataKeyNames="SalesRepID">
            <Columns>
                <asp:BoundField DataField="SalesRepID" HeaderText="ID" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                <asp:BoundField DataField="Province" HeaderText="Province" />
                <asp:BoundField DataField="Revenue" HeaderText="Revenue" />
                <asp:BoundField DataField="Expenses" HeaderText="Expenses" />
                <asp:BoundField DataField="NetIncome" HeaderText="Net Income" />
                <asp:BoundField DataField="Manager" HeaderText="Manager" />
                <asp:BoundField DataField="HireDate" HeaderText="Hire Date" DataFormatString="{0:dddd, MMMM dd, yyyy}" />
            </Columns>
        </asp:GridView>
</div>
</asp:Content>
