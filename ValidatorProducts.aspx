<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidatorProducts.aspx.cs" Inherits="Assignment_2.ValidatorProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>DropDown List</h1>

            Select Product:
            <asp:DropDownList ID="DDLproducts" runat="server" AutoPostBack="true"
            OnSelectedIndexChanged="DDLproducts_SelectedIndexChanged">
            </asp:DropDownList>
<br /><br />
 
           <asp:Image ID="ImageProduct" runat="server" Width="300" />
<br /><br />
 
           <asp:Button ID="btnPrice" runat="server" Text="Get Price"
            OnClick="btnPrice_Click" />
<br /><br />
 
           <asp:Label ID="lblPrice" runat="server" Font-Bold="true" />
        </div>
    </form>
</body>
</html>
