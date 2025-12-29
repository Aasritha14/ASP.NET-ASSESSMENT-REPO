<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validator.aspx.cs" Inherits="Assignment_1.Validator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Validator</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Enter Your Details</h2>
           
            Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="txtName" runat="server" />
            <br />
<br />
 
        Family Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="txtFamily" runat="server" />
           <asp:CustomValidator 
            ID="cvNameFamily" 
            runat="server"
            ControlToValidate="txtFamily"
            ErrorMessage="Name and Family Name should be different"
            OnServerValidate="ValidateNameFamily"
            ForeColor="Red" />
            <br />
<br />
 
        Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAddress" runat="server" />
            <asp:RequiredFieldValidator runat="server"
            ControlToValidate="txtAddress"
            ErrorMessage="Address required"
            ForeColor="Red" />
            <asp:RegularExpressionValidator runat="server"
            ControlToValidate="txtAddress"
            ValidationExpression=".{2,}"
            ErrorMessage="Minimum 2 letters"
            ForeColor="Red" />
            <br />
<br />
 
        City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCity" runat="server" />
            <asp:RegularExpressionValidator runat="server"
            ControlToValidate="txtCity"
            ValidationExpression=".{2,}"
            ErrorMessage="City must have at least 2 letters"
            ForeColor="Red" />
            <br />
<br />
 
        Zip Code:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtZip" runat="server" />
            <asp:RegularExpressionValidator runat="server"
            ControlToValidate="txtZip"
            ValidationExpression="^\d{5}$"
            ErrorMessage="Zip must be 5 digits"
            ForeColor="Red" />
            <br />
<br />
 
        Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPhone" runat="server" />
            <asp:RegularExpressionValidator runat="server"
            ControlToValidate="txtPhone"
            ValidationExpression="^\d{2,3}-\d{7}$"
            ErrorMessage="Phone format XX-XXXXXXX or XXX-XXXXXXX"
            ForeColor="Red" />
            <br />
<br />
 
        Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtEmail" runat="server" />
           <asp:RegularExpressionValidator runat="server"
            ControlToValidate="txtEmail"
            ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
            ErrorMessage="Invalid Email"
            ForeColor="Red" />
<br /><br />
 
        <asp:Button ID="btnCheck" runat="server" Text="Check" style="height: 35px" Width="83px" />
        </div>
    </form>
</body>
</html>
