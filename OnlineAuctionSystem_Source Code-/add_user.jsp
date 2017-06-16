
<%@ page import="java.sql.*" %>
<HTML>
<HEAD><TITLE>Online Auctions</TITLE></HEAD>
<BODY BGCOLOR="#FFFFFF">
<CENTER>
<BR><BR>


<%
   Connection conn = null;
  
    
   
     Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     conn = DriverManager.getConnection(
                "jdbc:odbc:bidd");

 
String name = request.getParameter("name");
String username = request.getParameter("username");
String password = request.getParameter("password");
String tel = request.getParameter("tel");
String email = request.getParameter("email");
String addr = request.getParameter("addr");



 Statement stmt = conn.createStatement();
 ResultSet rs = stmt.executeQuery("SELECT * FROM USERS WHERE (USERNAME='"+username+"')");    
 while (rs.next()){
    response.sendRedirect("http://localhost/bid/info1.htm");}
 
     stmt.executeUpdate("INSERT INTO USERS(NAME,USERNAME,PASS,TEL,EMAIL,ADDR) VALUES('"+name+"','"+username+"','"+password+"','"+tel+"','"+email+"','"+addr+"')");
     out.println("User Added.");

   
%>

</CENTER>
</BODY>
</HTML>