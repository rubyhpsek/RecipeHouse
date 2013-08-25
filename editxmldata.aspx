<%@ Page Language="VB" %>
<%@ Import Namespace="System.Xml" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script runat=server>
   private i, j as integer
   private strOutput as string = ""
   public xmldoc as new XMLDataDocument()
   
   sub Page_Load(Sender as Object, e as EventArgs)
      if not Page.IsPostBack then
         GetData()
         BindControl()
      end if
   end sub
   
   sub UpdateBtn_Click(Sender as Object, e as EventArgs)
        Dim CustomerID As TextBox
        Dim Firstname As TextBox
        Dim Surname As TextBox
        Dim City As TextBox
        Dim Email As TextBox
        Dim Telephone As TextBox
      
      GetData()
      'update data
      For i = 0 To DataGrid1.Items.Count-1
            CustomerID = DataGrid1.Items(i).FindControl("CustomerID")
            Firstname = DataGrid1.Items(i).FindControl("Firstname")
            Surname = DataGrid1.Items(i).FindControl("Surname")
            City = DataGrid1.Items(i).FindControl("City")
            Email = DataGrid1.Items(i).FindControl("Email")
            Telephone = DataGrid1.Items(i).FindControl("Telephone")
      
            xmldoc.DataSet.Tables(0).Rows(i)("CustomerID") = CustomerID.Text
            xmldoc.DataSet.Tables(0).Rows(i)("Firstname") = Firstname.Text
            xmldoc.DataSet.Tables(0).Rows(i)("Surname") = Surname.Text
            xmldoc.DataSet.Tables(0).Rows(i)("City") = City.Text
            xmldoc.DataSet.Tables(0).Rows(i)("Email") = Email.Text
            xmldoc.DataSet.Tables(0).Rows(i)("Telephone") = Telephone.Text
      Next
      
      try
            xmldoc.Save(Server.MapPath("Customers.xml"))
      catch
            output.Text = "Error updating data"
      end try
      
      BindControl()
   end sub
   
   sub GetData()
      try
            xmldoc.DataSet.ReadXml(Server.MapPath("Customers.xml"))
      catch ex as Exception
         output.Text = "Error accessing XML file"
      end try
   end sub
   
   sub BindControl()
      DataGrid1.DataSource = xmldoc.DataSet
      DataGrid1.DataMember = xmldoc.DataSet.Tables(0).TableName
      DataGrid1.DataBind()
   end sub
</script>

<html><body style="background-color: #FF3300">
    Go Back to <a href="Default.aspx">Homepage.</a><br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
   <asp:Label id="output" runat="server" />
   <form id="Form1" runat="server">
   <asp:DataGrid id="DataGrid1" runat="server" 
      BorderColor="#DEDFDE" 
      GridLines="Vertical" 
      HeaderStyle-BackColor="#cccc99"
      ItemStyle-BackColor="#ffffff"
      AlternatingItemStyle-Backcolor="#cccccc" 
      AutogenerateColumns="False" BackColor="White" BorderStyle="None" 
       BorderWidth="1px" CellPadding="4" ForeColor="Black" 
       style="background-color: #993300" >
<AlternatingItemStyle BackColor="White"></AlternatingItemStyle>
      <Columns>
         <asp:TemplateColumn HeaderText="CustomerID">
            <ItemTemplate>
               <asp:TextBox id="CustomerID" runat="server" 
                  Text='<%# Container.DataItem("CustomerID") %>' />
            </ItemTemplate>
         </asp:TemplateColumn>
         <asp:TemplateColumn HeaderText="Firstname">
            <ItemTemplate>
               <asp:TextBox id="Firstname" runat="server" 
                  Text='<%# Container.DataItem("Firstname") %>' 
                  width="150px" />
            </ItemTemplate>
         </asp:TemplateColumn>
        
         <asp:TemplateColumn HeaderText="Surname">
            <ItemTemplate>
               <asp:TextBox id="Surname" runat="server" 
                  Text='<%# Container.DataItem("Surname") %>'
                  width="150px" />
            </ItemTemplate>
         </asp:TemplateColumn>
         
          <asp:TemplateColumn HeaderText="City">
            <ItemTemplate>
               <asp:TextBox id="City" runat="server" 
                  Text='<%# Container.DataItem("City") %>'
                  width="150px" />
            </ItemTemplate>
         </asp:TemplateColumn>

         <asp:TemplateColumn HeaderText="Email">
            <ItemTemplate>
               <asp:TextBox id="Email" runat="server" 
                  Text='<%# Container.DataItem("Email") %>'
                  width="150px" />
            </ItemTemplate>
         </asp:TemplateColumn>

         <asp:TemplateColumn HeaderText="Telephone">
            <ItemTemplate>
               <asp:TextBox id="Telephone" runat="server" 
                  Text='<%# Container.DataItem("Telephone") %>'
                  width="150px" />
            </ItemTemplate>
         </asp:TemplateColumn>

      </Columns>     
       <FooterStyle BackColor="#CCCC99" />

<HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White"></HeaderStyle>

<ItemStyle BackColor="#F7F7DE"></ItemStyle>
       <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" 
           Mode="NumericPages" />
       <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
   </asp:DataGrid>
   
   <center>
   <asp:Button id="update" runat="server"
      OnClick="UpdateBtn_Click"
      text="Update!" />
   </center>
   </form>
</body>
</html>

