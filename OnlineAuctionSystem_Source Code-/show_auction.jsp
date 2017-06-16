
<%@ page import="java.sql.*" %>
<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Show Auction</title>
</head>

<body>


<%
   Connection conn = null;

     String[] b=request.getParameterValues("c");
      String a=b[0];
    
// int z=Integer.parseInt(a);



    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     conn = DriverManager.getConnection(
                "jdbc:odbc:bidd");

   Statement stmt = conn.createStatement();
  
   Statement stmt3 = conn.createStatement();



   ResultSet rs = stmt.executeQuery("SELECT * FROM AUC WHERE  (CID="+a+")");   

 while (rs.next()){
int i=0;
String t=rs.getString("AID");
ResultSet rs3 = stmt3.executeQuery("SELECT * FROM BID WHERE (AID="+t+")");
while(rs3.next()) 
i++;
 Statement stmt2 = conn.createStatement();
ResultSet rs2 = stmt2.executeQuery("SELECT * FROM BID WHERE BPRICE=(SELECT MAX(BPRICE)  FROM BID WHERE (AID="+t+"))");





    
%>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#000000" width="75%" id="AutoNumber1" align="right">
  <tr>
    <td width="37%" dir="rtl">
    <p dir="rtl"><font face="Tahoma" color="#800000" size="1"><%out.println(rs.getString("PNAME"));%></font></td>
    <td width="30%" dir="rtl" align="left">
    <p dir="rtl"><font face="Tahoma" color="#000080" size="2">&#1606;&#1575;&#1605; &#1605;&#1581;&#1589;&#1608;&#1604;:</font></td>
    <td width="33%" rowspan="5">
    <p align="center">
    <img border="0" src="<%out.println(rs.getString("PIC"));%>" width="130" height="92"></td>
  </tr>
  <tr>
    <td width="37%" dir="rtl">
    <p dir="rtl"><font face="Tahoma" color="#800000" size="1"> 
    <%out.println(rs.getString("UNIT"));%>&nbsp; </font></td>
    <td width="30%" dir="rtl" align="left">
    <font face="Tahoma" color="#000080" size="2">&#1578;&#1593;&#1583;&#1575;&#1583;:</font></td>
  </tr>
  <tr>
    <td width="37%" dir="rtl">
    <p dir="rtl"><font face="Tahoma" size="1" color="#800000"><%out.println(rs.getString("PRICE"));%> &#1585;&#1610;&#1575;&#1604;</font></td>
    <td width="30%" dir="rtl" align="left">
    <font face="Tahoma" color="#000080" size="2">&#1602;&#1610;&#1605;&#1578; &#1662;&#1575;&#1610;&#1607;:</font></td>
  </tr>
  <tr>
    <td width="37%" dir="rtl">
    <p dir="rtl"><font face="Tahoma" color="#800000" size="1">
    <%out.println(rs.getString("CDATE"));%></font></td>
    <td width="30%" dir="rtl" align="left">
    <font face="Tahoma" color="#000080" size="2">&#1578;&#1575;&#1585;&#1610;&#1582; &#1588;&#1585;&#1608;&#1593; &#1605;&#1586;&#1575;&#1610;&#1583;&#1607;:</font></td>
  </tr>
  <tr>
    <td width="37%" dir="rtl">
    <p dir="rtl"><font face="Tahoma" color="#000080" size="1">
    <font color="#800000"><%out.println(i);%></font></a></font><font face="Tahoma" size="1" color="#800000">&nbsp;
    </font></td>
    <td width="30%" dir="rtl" align="left">
    <font face="Tahoma" color="#000080" size="2">&#1578;&#1593;&#1583;&#1575;&#1583; &#1662;&#1610;&#1588;&#1606;&#1607;&#1575;&#1583;&#1575;&#1578;:</font></td>
  </tr>
  <tr>
    <td width="37%" dir="rtl" height="16">
    <p dir="rtl"><font size="1" color="#800000"><font face="Tahoma"><%if (rs2.next())
out.println(rs2.getInt("BPRICE"));%> &#1585;&#1610;&#1575;&#1604;</font></font></td>
    <td width="30%" dir="rtl" align="left" height="16">
    <font color="#000080" size="2"><font face="Tahoma">&#1570;&#1582;&#1585;&#1610;&#1606; &#1602;&#1610;&#1605;&#1578; &#1662;&#1610;&#1588;&#1606;&#1607;&#1575;&#1583;&#1610;:</font></font></td>
  </tr>
</table>
<p align="center">&nbsp;</p>
<p align="center"><font face="Tahoma" size="2" color="#008000"><span lang="fa">
<a target="_self" href="http://localhost/bid/add_bid_form.jsp?a=<%out.println(t);%>" style="text-decoration: none">
<font color="#008000">&#1575;&#1585;&#1575;&#1574;&#1607; &#1662;&#1610;&#1588;&#1606;&#1607;&#1575;&#1583;</font></a></span></font></p>

<p>&nbsp;</p>
<p dir="rtl">&nbsp;</p>
<p dir="rtl">&nbsp;</p>
<p dir="rtl">&nbsp;</p>

<%}%>
</font></p>

    
   




</body>

</html>


