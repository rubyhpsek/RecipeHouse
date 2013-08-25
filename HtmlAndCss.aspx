<%@ Page Language="VB" AutoEventWireup="false" CodeFile="HtmlAndCss.aspx.vb" Inherits="HtmlAndCss" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href=“Stock.css" /> 

    <title></title>
</head>
<body style="background-color: #CCCC00">
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
        &nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;
        &nbsp;&nbsp;
        
        
        <Script>
        if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        }
        else {// code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.open("GET", "Stock.xml", false);
        xmlhttp.send();
        xmlDoc = xmlhttp.responseXML;
        document.write("<table border='1'>");
        var x = xmlDoc.getElementsByTagName("Stock");
        for (i = 0; i < x.length; i++) {
            document.write("<tr><td>");
            document.write(x[i].getElementsByTagName("StockID")[0].childNodes[0].nodeValue);
            document.write("</td><td>");
            document.write(x[i].getElementsByTagName("Description")[0].childNodes[0].nodeValue);
            document.write("</td><td>");
           document.write(x[i].getElementsByTagName("Price")[0].childNodes[0].nodeValue);
            document.write("</td></tr>");
       
       
              
       
       
        }
        document.write("</table>");
</script></div>
    </form>
</body>
</html>
