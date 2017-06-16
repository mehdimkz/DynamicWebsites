<%@Language=Vbscript%>
<!--#include Virtual="/Adovbs.inc"-->
<%response.buffer=true%>


<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Report&nbsp; Control Panel</title>
</head>

<%
    dim id,p
    id=Session("sid")
  
  if id<>SESSION.SESSIONID  then
    response.redirect "login.asp"
  End if%> 
<body bgcolor="#C0C0C0">

<p>&nbsp;</p>
<p><b>Report&nbsp; Control Panel</b></p>
<p dir="rtl"><i><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#008080">
<a href="index.asp">&nbsp;<span lang="fa">&#1579;&#1576;&#1578; &#1601;&#1585;&#1608;&#1588; &#1705;&#1575;&#1585;&#1578;</span></a></font></b></i></p>
<p dir="rtl"><span lang="fa"><b><i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="newuser.asp">&nbsp;&#1578;&#1593;&#1585;&#1740;&#1601; &#1705;&#1575;&#1585;&#1576;&#1585; &#1580;&#1583;&#1740;&#1583;</a></i></b></span></p>

<p dir="rtl"><font color="#008080"><b><i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span lang="fa"><a href="useredit.asp">
&#1608;&#1740;&#1585;&#1575;&#1740;&#1588; &#1705;&#1575;&#1585;&#1576;&#1585;&#1575;&#1606;</a></span></i></b></font></p>

<p dir="rtl"><b><i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span lang="fa">
<a href="logout.asp">&#1582;&#1585;&#1608;&#1580;</a></span></i></b></p>
<p>&nbsp;</p>
<p dir="rtl"><font color="#008000"><b><i><span lang="fa">&#1575;&#1606;&#1608;&#1575;&#1593; &#1711;&#1586;&#1575;&#1585;&#1588;&#1607;&#1575;:</span></i></b></font></p>
<p dir="rtl"><span lang="fa"><font color="#800000"><b><i>&nbsp;&nbsp;&nbsp;&nbsp; 
&#1601;&#1585;&#1608;&#1588; &#1705;&#1575;&#1585;&#1578; &#1576;&#1607; &#1589;&#1608;&#1585;&#1578; &#1593;&#1583;&#1583;&#1740;</i></b></font></span></p>
<p dir="rtl"><font color="#008000"><i><b><span lang="fa">&nbsp; </span></b></i>&nbsp;&nbsp;
<font face="Nesf" size="2"><a href="reportform.htm">&nbsp;&#1711;&#1586;&#1575;&#1585;&#1588; &#1601;&#1585;&#1608;&#1588; &#1576;&#1585; &#1575;&#1587;&#1575;&#1587; &#1576;&#1575;&#1586;&#1607; 
&#1586;&#1605;&#1575;&#1606;&#1740;</a></font></font></p>
<p dir="rtl"><font color="#008000" size="2">&nbsp; <font face="Nesf">&nbsp;&nbsp;&nbsp;&nbsp;
<a href="reportform1.htm">&#1711;&#1586;&#1575;&#1585;&#1588; &#1601;&#1585;&#1608;&#1588; &#1576;&#1585; &#1575;&#1587;&#1575;&#1587; &#1576;&#1575;&#1586;&#1607; &#1586;&#1605;&#1575;&#1606;&#1740; &#1608; &#1606;&#1608;&#1593; &#1705;&#1575;&#1585;&#1578;</a></font></font></p>
<p dir="rtl">&nbsp;</p>
<p dir="rtl"><span lang="fa">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p>
<p dir="rtl"><span lang="fa"><font color="#800000"><b><i>&nbsp;&nbsp;&nbsp;&nbsp; 
&#1601;&#1585;&#1608;&#1588; &#1705;&#1575;&#1585;&#1578; &#1576;&#1607; &#1606;&#1605;&#1575;&#1740;&#1606;&#1583;&#1711;&#1575;&#1606; &#1608; &#1606;&#1607;&#1575;&#1583;&#1607;&#1575;</i></b></font></span></p>
<p dir="rtl"><font color="#008000"><i><b><span lang="fa">&nbsp; </span></b></i>&nbsp;
<span lang="fa">&nbsp;&nbsp; </span>&nbsp;<font face="Nesf" size="2">
<a href="oreportform.htm">&#1711;&#1586;&#1575;&#1585;&#1588; &#1601;&#1585;&#1608;&#1588; &#1576;&#1585; &#1575;&#1587;&#1575;&#1587; &#1576;&#1575;&#1586;&#1607; &#1586;&#1605;&#1575;&#1606;&#1740;</a></font></font></p>
<p dir="rtl"><font color="#008000" face="Nesf" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="oreportform1.htm">&#1711;&#1586;&#1575;&#1585;&#1588; &#1576;&#1585; &#1575;&#1587;&#1575;&#1587; &#1606;&#1575;&#1605; &#1606;&#1605;&#1575;&#1740;&#1606;&#1583;&#1607; &#1740;&#1575; &#1606;&#1607;&#1575;&#1583;</a> </font></p>


</body>

</html>