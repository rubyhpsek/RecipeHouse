<%@ Page Language="VB" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="VB" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Search Function</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 1041px; background-color: #FFCC66">
    
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
&nbsp;&nbsp; &nbsp;
    

        <br />
        <br />
        <br />
        &nbsp;<br />
        Please enter a First Name into the box below:<asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" BorderColor="#003300" 
            ForeColor="Black" style="background-color: #66FFCC"></asp:TextBox>
        <br />
        <asp:AutoCompleteExtender ID="tbSearchCustomerRecords_AutoCompleteExtender" 
        runat="server" TargetControlID="TextBox1" ServiceMethod="SearchCustomers" MinimumPrefixLength="2"
            CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" 
></asp:AutoCompleteExtender>
        <asp:Button ID="Button1" runat="server" Text="Search" 
            style="background-color: #CC3300" />
        <br />
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/ProjectDatabaseNew.mdb" 
            
            SelectCommand="SELECT * FROM [Customers] WHERE ([Firstname] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Textbox1" Name="" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="CustomerID" DataSourceID="AccessDataSource1" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" 
                    SortExpression="CustomerID" />
                <asp:BoundField DataField="Firstname" HeaderText="Firstname" 
                    SortExpression="Firstname" />
                <asp:BoundField DataField="Surname" HeaderText="Surname" 
                    SortExpression="Surname" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    
                <asp:BoundField DataField="Email" HeaderText="Email" 
                    SortExpression="Email" />
               
                <asp:BoundField DataField="Telephone" HeaderText="Telephone" 
                    SortExpression="Telephone" />
                
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
