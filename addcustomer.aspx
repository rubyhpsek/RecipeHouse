
    <div>
    
        &nbsp;Go back to <a href="Default.aspx">Homepage.</a></div>
    <br />
<br />
<p><strong>Please Modify by : Editing, Deleting, and Inserting the data of the form:</strong></p>



<%@ Page Language="VB" AutoEventWireup="false" CodeFile="addcustomer.aspx.vb" Inherits="newform2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: #FF0066">
    <form id="form1" runat="server">
    <div>
    
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/ProjectDatabaseNew.mdb" 
            DeleteCommand="DELETE FROM [Customers] WHERE (([CustomerID] = ?) OR ([CustomerID] IS NULL AND ? IS NULL))" 
            InsertCommand="INSERT INTO [Customers] ([CustomerID], [Firstname], [Surname], [City], [Email], [Telephone]) VALUES (?, ?, ?, ?, ?, ?)" 
            SelectCommand="SELECT * FROM [Customers]" 
            UpdateCommand="UPDATE [Customers] SET [Firstname] = ?, [Surname] = ?, [City] = ?, [Email] = ?, [Telephone] = ? WHERE CustomerID = ?">
            <DeleteParameters>
                <asp:Parameter Name="CustomerID" Type="String" />
                <asp:Parameter Name="Firstname" Type="String" />
                <asp:Parameter Name="Surname" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Telephone" Type="String" />
 
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CustomerID" Type="String" />
                <asp:Parameter Name="Firstname" Type="String" />
                <asp:Parameter Name="Surname" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Telephone" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Firstname" Type="String" />
                <asp:Parameter Name="Surname" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Telephone" Type="String" />
                <asp:Parameter Name="CustomerID" Type="String" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <br />
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
            DataKeyNames="CustomerID" DataSourceID="AccessDataSource1" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" GridLines="Both">
            <EditItemTemplate>
                CustomerID:
                <asp:Label ID="CustomerIDLabel1" runat="server" 
                    Text='<%# Eval("CustomerID") %>' />
                <br />
                Firstname:
                <asp:TextBox ID="FirstnameTextBox" runat="server" 
                    Text='<%# Bind("Firstname") %>' />
                <br />
                Surname:
                <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                <br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Telephone:
                <asp:TextBox ID="TelephoneTextBox" runat="server" 
                    Text='<%# Bind("Telephone") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                CustomerID:
                <asp:TextBox ID="CustomerIDTextBox" runat="server" 
                    Text='<%# Bind("CustomerID") %>' />
                <br />
                Firstname:
                <asp:TextBox ID="FirstnameTextBox" runat="server" 
                    Text='<%# Bind("Firstname") %>' />
                <br />
                Surname:
                <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                <br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Telephone:
                <asp:TextBox ID="TelephoneTextBox" runat="server" 
                    Text='<%# Bind("Telephone") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                CustomerID:
                <asp:Label ID="CustomerIDLabel" runat="server" 
                    Text='<%# Eval("CustomerID") %>' />
                <br />
                Firstname:
                <asp:Label ID="FirstnameLabel" runat="server" Text='<%# Bind("Firstname") %>' />
                <br />
                Surname:
                <asp:Label ID="SurnameLabel" runat="server" Text='<%# Bind("Surname") %>' />
                <br />
                City:
                <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Telephone:
                <asp:Label ID="TelephoneLabel" runat="server" Text='<%# Bind("Telephone") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
