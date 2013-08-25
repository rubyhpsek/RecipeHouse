<%@ Page Language="VB" AutoEventWireup="false" CodeFile="FormValidations.aspx.vb" Inherits="FormValidations" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: #FF66FF">
    <form id="form1" runat="server">
    <div>
    
 <asp:Button ID="Button10" runat="server" BackColor="#FF0066" BorderColor="Red" 
     BorderStyle="Groove" ForeColor="Black" PostBackUrl="~/Default.aspx" 
     Text="Home" />
&nbsp;&nbsp;
 <asp:Button ID="Button2" runat="server" BackColor="#FF0066" BorderColor="Red" 
     BorderStyle="Groove" ForeColor="Black" PostBackUrl="~/Search.aspx" 
     Text="Search" />
&nbsp;&nbsp;
 <asp:Button ID="Button3" runat="server" BackColor="#FF0066" BorderColor="Red" 
     BorderStyle="Groove" ForeColor="Black" PostBackUrl="~/FormValidations.aspx" 
     Text="FormValidations" />
&nbsp;&nbsp;
 <asp:Button ID="Button4" runat="server" BackColor="#FF0066" BorderColor="Red" 
     BorderStyle="Groove" ForeColor="Black" PostBackUrl="~/addcustomer.aspx" 
     Text="addcustomer" />
&nbsp;&nbsp;
 <asp:Button ID="Button5" runat="server" BackColor="#FF0066" BorderColor="Red" 
     BorderStyle="Groove" ForeColor="Black" PostBackUrl="~/createxml.aspx" 
     Text="createxml" />
&nbsp;&nbsp;
 <asp:Button ID="Button6" runat="server" BackColor="#FF0066" BorderColor="Red" 
     BorderStyle="Groove" ForeColor="Black" PostBackUrl="~/adoconnection.aspx" 
     Text="Suppliers Details" />
&nbsp;&nbsp;
 <asp:Button ID="Button7" runat="server" BackColor="#FF0066" BorderColor="Red" 
     BorderStyle="Groove" ForeColor="Black" PostBackUrl="~/dataentrystock.aspx" 
     Text="D/A layer stock details" />
&nbsp;&nbsp;
 <asp:Button ID="Button8" runat="server" BackColor="#FF0066" BorderColor="Red" 
     BorderStyle="Groove" ForeColor="Black" PostBackUrl="~/editxmldata.aspx" 
     Text="editxmldata" />
&nbsp;&nbsp;
 <asp:Button ID="Button9" runat="server" BackColor="#FF0066" BorderColor="Red" 
     BorderStyle="Groove" ForeColor="Black" PostBackUrl="~/HtmlAndCss.aspx" 
     Text="HtmlAndCss" />
&nbsp;&nbsp; &nbsp;<br />

     </div><br />
<br />
<p><strong>Please Key-in some information for Validations:</strong></p>
    <br />
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/ProjectDatabaseNew.mdb" 
        DeleteCommand="DELETE FROM [Stock] WHERE (([StockID] = ?) OR ([StockID] IS NULL AND ? IS NULL))" 
        InsertCommand="INSERT INTO [Stock] ([StockID], [Description], [Price], [Stock_level], [SupplierID]) VALUES (?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [Stock]" 
        UpdateCommand="UPDATE [Stock] SET [Description] = ?, [Price] = ?, [Stock_level] = ?, [SupplierID] = ? WHERE (([StockID] = ?) OR ([StockID] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="StockID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="StockID" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Stock_level" Type="Int32" />
            <asp:Parameter Name="SupplierID" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Stock_level" Type="Int32" />
            <asp:Parameter Name="SupplierID" Type="String" />
            <asp:Parameter Name="StockID" Type="String" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <br />
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
        DataKeyNames="StockID" DataSourceID="AccessDataSource1" 
        style="background-color: #6600CC">
        <EditItemTemplate>
            StockID:
            <asp:Label ID="StockIDLabel1" runat="server" Text='<%# Eval("StockID") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" 
                Text='<%# Bind("Description") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Stock_level:
            <asp:TextBox ID="Stock_levelTextBox" runat="server" 
                Text='<%# Bind("Stock_level") %>' />
            <br />
            SupplierID:
            <asp:TextBox ID="SupplierIDTextBox" runat="server" 
                Text='<%# Bind("SupplierID") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            StockID:
            <asp:TextBox ID="StockIDTextBox" runat="server" Text='<%# Bind("StockID") %>' />
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ControlToValidate="StockIDTextBox" Display="Dynamic" 
                ErrorMessage="Please enter a StockID from 3001 to 3500" MaximumValue="3500" 
                MinimumValue="3001" Type="Integer">Error; ReEnter: 3001 to 3500</asp:RangeValidator>
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" 
                Text='<%# Bind("Description") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="DescriptionTextBox" Display="Dynamic" 
                ErrorMessage="Please enter a Stock Name "></asp:RequiredFieldValidator>
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <asp:RangeValidator ID="RangeValidator3" runat="server" 
                ControlToValidate="PriceTextBox" Display="Dynamic" 
                ErrorMessage="Please enter a Price from 0.1 to 500" MaximumValue="500" 
                MinimumValue="0.1" Type="Currency"> Error: ReEnter from 0.1 to 500 only</asp:RangeValidator>
            <br />
            Stock_level:
            <asp:TextBox ID="Stock_levelTextBox" runat="server" 
                Text='<%# Bind("Stock_level") %>' />
            <asp:RangeValidator ID="RangeValidator4" runat="server" 
                ControlToValidate="Stock_levelTextBox" Display="Dynamic" 
                ErrorMessage="Please enter a Stock Quantity from 1 to 1000" MaximumValue="1000" 
                MinimumValue="1" Type="Integer"></asp:RangeValidator>
            <br />
            SupplierID:
            <asp:TextBox ID="SupplierIDTextBox" runat="server" 
                Text='<%# Bind("SupplierID") %>' />
            <asp:RangeValidator ID="RangeValidator5" runat="server" 
                ControlToValidate="SupplierIDTextBox" Display="Dynamic" 
                ErrorMessage="Please enter a SupplierID from 5001 to 5100" MaximumValue="5100" 
                MinimumValue="5001" Type="Integer">Error:ReEnter from 5001 to 5100 only</asp:RangeValidator>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            StockID:
            <asp:Label ID="StockIDLabel" runat="server" Text='<%# Eval("StockID") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" 
                Text='<%# Bind("Description") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Stock_level:
            <asp:Label ID="Stock_levelLabel" runat="server" 
                Text='<%# Bind("Stock_level") %>' />
            <br />
            SupplierID:
            <asp:Label ID="SupplierIDLabel" runat="server" 
                Text='<%# Bind("SupplierID") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    </form>
</body>
</html>
