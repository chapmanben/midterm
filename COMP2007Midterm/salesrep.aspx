<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="salesrep.aspx.cs" Inherits="COMP2007Midterm.salesrep" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h1>Sales Representative Details</h1>
    <h5>All fields are required</h5>
    <fieldset>
         <div class="col-sm-2">
            <label for="txtFirstMidName" >First Name:</label>
            <asp:TextBox ID="txtFirstMidName" runat="server" required MaxLength="50" />
        </div>
        <div class="col-sm-2">
            <label for="txtLastName" >Last Name:</label>
            <asp:TextBox ID="txtLastName" runat="server" required MaxLength="50" />
        </div>
        <div class="col-sm-2">
            <label for ="ddlProvince">Province:</label>
            <asp:DropDownList ID="ddlProvince" runat="server" required>
                <asp:ListItem Value="AB" Text="Alberta"/>
                <asp:ListItem Value="BC" Text="British Columbia"/>
                <asp:ListItem Value="MB" Text="Manitoba" />
                <asp:ListItem Value="NB" Text="New Brunswick"/>
                <asp:ListItem Value="NL" Text="Newfoundland and Labrador"/>
                <asp:ListItem Value="NT" Text="Northwest Territories"/>
                <asp:ListItem Value="NS" Text="Nova Scotia"/>
                <asp:ListItem Value="NU" Text="Nunavut"/>
                <asp:ListItem Value="ON" Text="Ontario"/>
                <asp:ListItem Value="PE" Text="Prince Edward Island"/>
                <asp:ListItem Value="QC" Text="Québec"/>
                <asp:ListItem Value="SK" Text="Saskatchewan"/>
                <asp:ListItem Value="YT" Text="Yukon"/>
            </asp:DropDownList>
        </div>
        <div class="col-sm-2">
            <label for="txtEnrollmentDate" >Enrollment Date</label>
            <asp:TextBox ID="txtEnrollmentDate" runat="server" required TextMode="Date"/>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Must Be A Date" 
                    ControlToValidate="txtEnrollmentDate" CssClass="alert alert-danger" Type="Date" MinimumValue="01/01/2000" MaximumValue="12/31/2999"></asp:RangeValidator>
        </div>
    </fieldset>
    <div>
    <asp:Button ID="btnSave"  runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click"/>
    </div>

</asp:Content>
