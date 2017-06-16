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
    response.sendRedirect("http://localhost/bid/website/login.htm");

   Connection conn = null;
   int i=0;
   int k=0;
   try
   {
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     conn = DriverManager.getConnection(
                "jdbc:odbc:bidd");



Statement stmt = conn.createStatement();
 

String bprice = request.getParameter("bprice");
int q=Integer.parseInt(bprice);
 
Object s=session.getAttribute( "aid");
String z=(String)s;

Statement stmt2 = conn.createStatement();


ResultSet rs2 = stmt2.executeQuery("SELECT * FROM BID WHERE BPRICE=(SELECT MAX(BPRICE)  FROM BID WHERE (AID="+z+"))");
if (rs2.next())
 k=rs2.getInt("BPRICE");
if (k>=q)
 response.sendRedirect("http://localhost/bid/info4.htm");

else{




ResultSet rs3 = stmt.executeQuery("SELECT * FROM AUC WHERE (AID="+z+")");
rs3.next();
int p=rs3.getInt("PRICE");
if (q<=p)
response.sendRedirect("http://localhost/bid/info6.htm");
else{
Object m=session.getAttribute( "uid" ); 
String n=(String)m;



 Calendar cal  = Calendar.getInstance();
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
//out.print("<br>" + formatter.format(cal.getTime())  );
String w=(String)formatter.format(cal.getTime());

stmt.executeUpdate("INSERT INTO BID(AID,UID,BPRICE,BDATE) VALUES("+z+","+n+","+bprice+",'"+w+"')");
     
}
}  

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

   }%>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="81">
  <tr>
    <td width="100%" bgcolor="#EFEFEF" height="81">
    <p dir="rtl">&nbsp;</p>
    <p dir="rtl"><FONT style="FONT-SIZE: 10pt" 
      face=tahoma>
    <FONT color=#000080 style="font-size: 10pt" face="tahoma">
      <IMG height=10 
      src="image/FLESH.gif" width=10 border=0>&nbsp;<span lang="fa">&#1662;&#1610;&#1588;&#1606;&#1607;&#1575;&#1583; &#1588;&#1605;&#1575; 
    &#1576;&#1607; &#1587;&#1610;&#1587;&#1578;&#1605; &#1575;&#1590;&#1575;&#1601;&#1607; &#1588;&#1583;.</span></FONT></FONT></p>
    <p dir="rtl"><font face="tahoma" size="2" color="#000080">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </font></p>
    <p dir="rtl">&nbsp;</p>
    <p dir="rtl">
    <FONT 
      style="FONT-SIZE: 10pt" face=tahoma color="maroon" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </FONT></p>
    <p dir="rtl">&nbsp;</td>
  </tr>
</table>
<p style="margin-left: 10px; margin-right: 10px">&nbsp;</p>
<p style="margin-left: 10px; margin-right: 10px">&nbsp;</p>

</body>

</html>