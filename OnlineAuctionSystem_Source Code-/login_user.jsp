
<%@ page import="java.sql.*,java.util.*,java.text.*" %>
<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Online Auction</title>
</head>

<body>

<%
   Connection conn = null;
   
    int k=0;
   int i=0;
  
     Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     conn = DriverManager.getConnection(
                "jdbc:odbc:bidd");

String username = request.getParameter("username");
String password = request.getParameter("password");
       

     Statement stmt = conn.createStatement();


    ResultSet rs = stmt.executeQuery("SELECT * FROM USERS WHERE  (USERNAME='"+username+"') AND (PASS='"+password+"')");
if(rs.next())
     {
      //  String a=request.getRequestedSessionId();  
      String a=session.getId();        
      session.setAttribute( "sid", a );   
         
      String b=rs.getString("UID");   
      session.setAttribute( "uid", b ); 
   
%>

<p dir="rtl" align="justify">&nbsp;</p>
<p dir="rtl" align="justify">&nbsp;&nbsp;&nbsp; <font color="#000080">&nbsp;&nbsp;
</font><span lang="fa"><font color="#000080">&#1570;&#1602;&#1575; / &#1582;&#1575;&#1606;&#1605;</font>&nbsp;&nbsp;
</span><font color="#800000"><%out.println(rs.getString("NAME"));%> </font><span lang="fa"><font color="#800000">
</font>&nbsp;&nbsp;&nbsp;&nbsp; <font color="#000080">&#1576;&#1607; &#1587;&#1610;&#1587;&#1578;&#1605; &#1605;&#1583;&#1610;&#1585;&#1610;&#1578; &#1603;&#1575;&#1585;&#1576;&#1585;&#1575;&#1606; 
&#1582;&#1608;&#1588; &#1570;&#1605;&#1583;&#1610;&#1583;.</font></span></p>
<p dir="rtl" align="justify"><span lang="fa"><font color="#000080">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</font></span></p>
<p dir="rtl" align="justify"><span lang="fa"><font color="#000080">&nbsp;&nbsp;&nbsp;
</font></span></p>
<p dir="rtl" align="justify"><span lang="fa">
<a href="http://localhost/bid/add_auction_form.jsp" style="text-decoration: none">
<font color="#000080" face="Tahoma">&nbsp;&nbsp; </font>
<font face="Tahoma" color="#008080">&nbsp;&#1575;&#1610;&#1580;&#1575;&#1583; &#1605;&#1586;&#1575;&#1610;&#1583;&#1607;</font></a></span></p>
<p dir="rtl" align="justify"><span lang="fa">
<font face="Tahoma" color="#008080">&nbsp;&nbsp;&nbsp; &#1608;&#1610;&#1585;&#1575;&#1610;&#1588; &#1605;&#1586;&#1575;&#1610;&#1583;&#1607;</font></span></p>
<p dir="rtl" align="justify">
<a href="file:///E:/website/add_auction_form.htm" style="text-decoration: none">
<font color="#008080" face="Tahoma">&nbsp;&nbsp; &#1605;&#1588;&#1575;&#1607;&#1583;&#1607; &#1587;&#1608;&#1575;&#1576;&#1602;</font></a></p>
<p dir="rtl" align="justify">
<a href="http://localhost/bid/logout.jsp" style="text-decoration: none">
<font color="#008080" face="Tahoma">&nbsp;&nbsp; &#1582;&#1585;&#1608;&#1580;</font></a></p>
<p dir="rtl" align="justify">&nbsp;</p>




 <%  }
else
response.sendRedirect("http://localhost/bid/info2.htm");

%>

</CENTER>
</BODY>
</HTML>