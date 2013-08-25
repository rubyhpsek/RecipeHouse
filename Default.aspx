<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="Default.aspx.vb" Inherits="_Default" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    .newStyle1
    {
        background-color: #FF00FF;
    }
        .style3
        {
            height: 44px;
        }
        .style5
        {
            width: 207px;
            height: 375px;
            margin-right: 0px;
        }
        .style6
        {
            width: 207px;
            height: 375px;
            margin-right: 0px;
        }
        .style7
        {
            width: 207px;
            height: 375px;
            margin-right: 0px;
        }
        .style8
        {
             width: 207px;
            height: 375px;
            margin-right: 0px;
        }
        </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table class="style1">
        <tr>
            <td class="style3">
                
               <asp:label runat="server" ID="CurrentTime" 
               style="background-color: #FFFFFF; color: #FF0000;"></asp:label>
            </td>
        </tr>
        <tr>
            <td>
               &nbsp; &nbsp; &nbsp; &nbsp;<img alt="img 1" class="style5" src="Image/Market.jpg" />&nbsp; &nbsp;<img alt="img 2" class="style6" 
                     src="Image/whole-spices.jpg" />&nbsp; &nbsp;<img alt="img 3" class="style7" 
                     src="Image/spice-market.jpg" />&nbsp; &nbsp;<img alt="img 4" class="style8" 
                     src="Image/spices.jpg" /></td>&nbsp; &nbsp;
            <td>
                &nbsp;</td>
        </tr> 
    </table>
    <p>
        &nbsp;</p>
    </asp:Content>