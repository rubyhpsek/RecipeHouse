 


<%@ Page Language="VB" AutoEventWireup="false" CodeFile="MasterDetailte.aspx.vb" Inherits="MasterDetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MasterDetail Page</title>
</head>
<body bgcolor="#00ffff">
    <form id="form1" runat="server">
    <div>
    
        Please click here to go back to <a href="Default.aspx">HomePage.</a><br />
    
        <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
            DataFile="~/App_Data/ProjectDatabaseNew.mdb" 
            SelectCommand="SELECT * FROM [Customers]"></asp:AccessDataSource>
    
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" 
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
            CellPadding="2" DataKeyNames="CustomerID" DataSourceID="AccessDataSource3" 
            ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" 
                    SortExpression="CustomerID" />
                <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                    SortExpression="Firstname" />
                <asp:BoundField DataField="Surname" HeaderText="Surname" 
                    SortExpression="Surname" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Telephone" HeaderText="Telephone" 
                    SortExpression="Telephone" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
    
        <br />
    
    </div>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="~/App_Data/ProjectDatabaseNew.mdb" 
        SelectCommand="SELECT * FROM [Orders] WHERE ([CustomerID] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="CustomerID2" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <br />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataKeyNames="OrderID" DataSourceID="AccessDataSource2">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" 
                SortExpression="OrderID" />
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" 
                SortExpression="CustomerID" />
            <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" />
            <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
            <asp:BoundField DataField="StockID" HeaderText="StockID" 
                SortExpression="StockID" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    </form>
</body>
</html>
