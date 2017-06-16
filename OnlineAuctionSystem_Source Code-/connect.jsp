<%@ page import="java.sql.*" %>
<HTML>
<HEAD><TITLE>Simple Oracle Example</TITLE></HEAD>
<BODY BGCOLOR="#FFFFFF">
<CENTER>
<B>Employees</B>
<BR><BR>
<%
   Connection conn = null;
   
     Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     conn = DriverManager.getConnection(
                "jdbc:odbc:bidd");

     %>