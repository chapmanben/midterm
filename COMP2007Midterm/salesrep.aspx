<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="salesrep.aspx.cs" Inherits="COMP2007Midterm.salesrep" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="well">
        <h1>Sales Representative Details</h1>
        <h5>All fields are required</h5>
        <fieldset>
            <div class="row-col-sm-2">
                <label for="txtFirstName">First Name:</label>
                <asp:TextBox ID="txtFirstName" runat="server" required MaxLength="50" />
            </div>
            <div class="row-col-sm-2">
                <label for="txtLastName">Last Name:</label>
                <asp:TextBox ID="txtLastName" runat="server" required MaxLength="50" />
            </div>
            <div class="row-col-sm-2">
                <label for="ddlProvince">Province:</label>
                <asp:DropDownList ID="ddlProvince" runat="server" required>
                    <asp:ListItem Text="AB" Text="AB" />
                    <asp:ListItem Text="BC" Text="BC" />
                    <asp:ListItem Text="MB" Text="Bc" />
                    <asp:ListItem Text="NB" Text="New Brunswick" />
                    <asp:ListItem Text="NL" Text="Newfoundland and Labrador" />
                    <asp:ListItem Text="NT" Text="Northwest Territories" />
                    <asp:ListItem Text="NS" Text="Nova Scotia" />
                    <asp:ListItem Text="NU" Text="Nunavut" />
                    <asp:ListItem Text="ON" Text="Ontario" />
                    <asp:ListItem Text="PE" Text="Prince Edward Island" />
                    <asp:ListItem Text="QC" Text="Québec" />
                    <asp:ListItem Text="SK" Text="Saskatchewan" />
                    <asp:ListItem Text="YT" Text="Yukon" />
                </asp:DropDownList>
            </div>

            <div class="row-col-sm-2">
                <label for="txtRevenue">Revenue:</label>
                <asp:TextBox ID="txtRevenue" runat="server" required></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Please Enter A Value Between 0 and 999999999" ControlToValidate="txtRevenue" Type="Currency" MinimumValue="0" MaximumValue="999999999"></asp:RangeValidator>
            </div>
            <div class="row-col-sm-2">
                <label for="txtExpenses">Expenses:</label>
                <asp:TextBox ID="txtExpenses" runat="server" required></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="Please Enter A Value Between 0 and 999999999" ControlToValidate="txtExpenses" Type="Currency" MinimumValue="0" MaximumValue="999999999"></asp:RangeValidator>
            </div>
            <div class="row-col-sm-2">
                <label for="txtEnrollmentDate">HireDate:</label>
                <asp:TextBox ID="txtEnrollmentDate" runat="server" required TextMode="Date" />
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Must Be A Date"
                    ControlToValidate="txtEnrollmentDate" CssClass="alert alert-danger" Type="Date" MinimumValue="01/01/2000" MaximumValue="12/31/2999"></asp:RangeValidator>
            </div>
            <div class="row-col-sm-2">
                <label for="cbxManager">Manager:</label>
                <asp:CheckBox ID="cbxManager" runat="server" />
            </div>
        </fieldset>
        <div>
            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click" />
        </div>
    </div>
</asp:Content>
