<%@ Page Language="VB" AutoEventWireup="false" CodeFile="dataentrystock.aspx.vb" Inherits="dataentrystock" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: #993333">
    <form id="form1" runat="server">
    PLEASE CLICK HERE TO GO BACK TO <a href="Default.aspx">HOMEPAGE.</a><br />
    <br />
    <br />
    <div>
    
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
            CellPadding="2" DataKeyNames="StockID" 
            DataSourceID="ObjectDataSource1" ForeColor="Black">
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
            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <InsertItemTemplate>
                StockID:
                <asp:TextBox ID="StockIDTextBox" runat="server" Text='<%# Bind("StockID") %>' />
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
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                HorizontalAlign="Center" />
        </asp:FormView>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            DeleteMethod="Delete" InsertMethod="Insert" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetStock" 
            TypeName="DataSet1TableAdapters.StockTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_StockID" Type="String" />
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
                <asp:Parameter Name="Original_StockID" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
