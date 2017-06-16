<%@ page language="java" import="java.io.*, java.sql.*,java.text.*,java.util.*" %>


<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>&#1601;&#1585;&#1608;&#1588;&#1711;&#1575;&#1607; &#1588;&#1605;&#1575; &#1576;&#1575; &#1605;&#1588;&#1582;&#1589;&#1575;&#1578; &#1584;&#1610;&#1604; &#1575;&#1610;&#1580;&#1575;&#1583; &#1711;&#1585;&#1583;&#1610;&#1583;</title>
</head>
<body>
<%

if (session.getId()!= session.getAttribute( "sid" )) 
    response.sendRedirect("http://localhost/bid/info2.htm");

   Connection conn = null;
   int i=0;
   try
   {
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     conn = DriverManager.getConnection(
                "jdbc:odbc:bidd");

Statement stmt = conn.createStatement();
 

String name = request.getParameter("productname");
String D1 = request.getParameter("D1");
String unit = request.getParameter("unit");
String price = request.getParameter("price");
Object s=session.getAttribute( "imagefile");
String z=(String)s;

Object m=session.getAttribute( "uid" ); 
String n=(String)m;


 Calendar cal  = Calendar.getInstance();
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
//out.print("<br>" + formatter.format(cal.getTime())  );
String w=(String)formatter.format(cal.getTime());

stmt.executeUpdate("INSERT INTO AUC(PNAME,UID,UNIT,PRICE,CID,PIC,CDATE) VALUES('"+name+"','"+n+"','"+unit+"','"+price+"','"+D1+"','"+z+"','"+w+"')");
     
response.sendRedirect("http://localhost/bid/info3.htm");
  

}
   catch(SQLException e)
   {
      out.println("SQLException: " + e.getMessage() + "<BR>");
      while((e = e.getNextException()) != null)
         out.println(e.getMessage() + "<BR>");
   }
   catch(ClassNotFoundException e)
   {
      out.println("ClassNotFoundException: " + e.getMessage() + "<BR>");
   }
   finally
   {
      //Clean up resources, close the connection.
      if(conn != null)
      {
         try
         {
            conn.close();
         }
         catch (Exception ignored) {}
      }

   }
%>

</body>

</html>