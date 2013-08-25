
    <body style="background-color: #33CC33">
    <form id="form1" runat="server">
    <div>
    
 <asp:Button ID="Button1" runat="server" BackColor="#FF0066" BorderColor="Red" 
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
        &nbsp;&nbsp;<br />

     </div><br />
<br />
<p>This is Our Suppliers Lists (Updated)</p>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script language="VB" runat="server">
  sub Page_Load(sender as Object, e as EventArgs)
    'Create a connection string
    Dim connString as String
        connString = "PROVIDER=Microsoft.Jet.OLEDB.4.0;DATA SOURCE=|DataDirectory|ProjectDatabaseNew.mdb;"
    
    'Open a connection
    Dim objConnection as OleDbConnection
    objConnection = New OleDbConnection(connString)
    objConnection.Open()
    
    'Specify the SQL string
        Dim strSQL As String = "SELECT * FROM Suppliers"
    
    'Create a command object
    Dim objCommand as OleDbCommand
    objCommand = New OleDbCommand(strSQL, objConnection)

    'Get a datareader
    Dim objDataReader as OleDbDataReader
    objDataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection)

    'Do the DataBinding
    dgResults.DataSource = objDataReader
    dgResults.DataBind()    
    
    'Close the datareader/db connection
    objDataReader.Close()
  end sub
</script> 

<asp:DataGrid id="dgResults" runat="server" BackColor="White" 
    BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
    CellSpacing="1" GridLines="None" >
    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
    <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
</asp:DataGrid>


    </form>



