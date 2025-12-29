
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewNlastBills.aspx.cs" Inherits="Electricity_PRJ.ViewBills" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>View Last N Bills</title>
</head>
<body>
  <form id="form1" runat="server">

    
    <asp:ValidationSummary ID="ValidationSummary1" runat="server"
        HeaderText="Please fix the following:"
        ShowMessageBox="false"
        ShowSummary="true"
        ValidationGroup="ViewBillsGroup"
        BackColor="Blue"
        ForeColor="Red" />

    <div>

      Enter number of bills:&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="txtCount" runat="server" />
      <br />

      
      <asp:RequiredFieldValidator ID="rfvCount" runat="server"
          ControlToValidate="txtCount"
          ErrorMessage="Enter number of bills."
          Display="Dynamic"
          ValidationGroup="ViewBillsGroup" />

      
      <asp:CustomValidator ID="cvCount" runat="server"
          ControlToValidate="txtCount"
          ErrorMessage="Enter a value greater than zero."
          Display="Dynamic"
          ValidationGroup="ViewBillsGroup"
          OnServerValidate="cvCount_ServerValidate" />
      <br /><br />

     
      <asp:Button ID="btnView" runat="server"
          Text="View Bills"
          OnClick="btnView_Click"
          CausesValidation="true"
          ValidationGroup="ViewBillsGroup" />
      <br /><br />

     
      <asp:Label ID="lblMessage" runat="server"></asp:Label>
      <br />

     
      <asp:GridView ID="gvBills" runat="server"
          AutoGenerateColumns="False"
          Visible="False"
          CellPadding="4"
          ForeColor="#333333"
          GridLines="None">

        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
          <asp:BoundField HeaderText="Consumer Number" DataField="ConsumerNumber" />
          <asp:BoundField HeaderText="Consumer Name" DataField="ConsumerName" />
          <asp:BoundField HeaderText="Units Consumed" DataField="UnitsConsumed" />
          <asp:BoundField HeaderText="Bill Amount" DataField="BillAmount" DataFormatString="{0:F2}" />
        </Columns>

        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
      </asp:GridView>
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
