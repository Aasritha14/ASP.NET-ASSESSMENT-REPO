
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BillingForm.aspx.cs" Inherits="Electricity_PRJ.BillingForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Add Electricity Bill</title>
</head>
<body>
  <form id="form1" runat="server">

    
    <asp:ValidationSummary ID="ValidationSummary1" runat="server"
        HeaderText="Please fix the following:"
        ShowMessageBox="false"
        ShowSummary="true"
        ValidationGroup="BillGroup"
        BackColor="Blue"
        ForeColor="Red" />

    <div>
     
      Enter Consumer Number:&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="TextBox1" runat="server" />
      <br />

      
      <asp:RequiredFieldValidator ID="rfvConsumerNumber" runat="server"
          ControlToValidate="TextBox1"
          ErrorMessage="Consumer number is required."
          Display="Dynamic"
          ValidationGroup="BillGroup" />

     
      <asp:RegularExpressionValidator ID="revConsumerNumber" runat="server"
          ControlToValidate="TextBox1"
          ValidationExpression="^EB\d{5}$"
          ErrorMessage="Consumer number must be in the format EB12345 (EB + 5 digits)."
          Display="Dynamic"
          ValidationGroup="BillGroup" />
      <br /><br />

      
      Enter Consumer Name:&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="TextBox2" runat="server" />
      <br />

     
      <asp:RequiredFieldValidator ID="rfvConsumerName" runat="server"
          ControlToValidate="TextBox2"
          ErrorMessage="Consumer name is required."
          Display="Dynamic"
          ValidationGroup="BillGroup" />

     
      <asp:RegularExpressionValidator ID="revConsumerName" runat="server"
          ControlToValidate="TextBox2"
          ValidationExpression="^[A-Za-z ]{2,50}$"
          ErrorMessage="Name must contain only letters and spaces (2–50 characters)."
          Display="Dynamic"
          ValidationGroup="BillGroup" />
      <br /><br />

      
      Units Consumed:&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="TextBox3" runat="server" />
      <br />

      
      <asp:RequiredFieldValidator ID="rfvUnits" runat="server"
          ControlToValidate="TextBox3"
          ErrorMessage="Units are required."
          Display="Dynamic"
          ValidationGroup="BillGroup" />

     
      <asp:CompareValidator ID="cvUnitsType" runat="server"
          ControlToValidate="TextBox3"
          Operator="DataTypeCheck"
          Type="Integer"
          ErrorMessage="Units must be a whole number."
          Display="Dynamic"
          ValidationGroup="BillGroup" />

     
      <asp:RangeValidator ID="rvUnits" runat="server"
          ControlToValidate="TextBox3"
          MinimumValue="1"
          MaximumValue="10000"
          Type="Integer"
          ErrorMessage="Units must be between 1 and 10,000."
          Display="Dynamic"
          ValidationGroup="BillGroup" />
      <br /><br />

      
      <asp:Button ID="Button1" runat="server"
          Text="AddBill"
          OnClick="Button1_Click"
          CausesValidation="true"
          ValidationGroup="BillGroup" />
      <br />
    </div>
  </form>


  <script type="text/javascript">
      function validateOnBlur(group) {
          if (typeof (Page_ClientValidate) === "function") {
              Page_ClientValidate(group);
          }
      }
  </script>
</body>
</html>


