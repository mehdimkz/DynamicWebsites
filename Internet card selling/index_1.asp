<%@Language=Vbscript%>
<%option Explicit%>
<!--#include Virtual="/Adovbs.inc"-->
<%response.buffer=true%>

<html>

<head>
<meta http-equiv="Content-Language" content="fa">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1253">
<title>&#1588;&#1585;&#1705;&#1578; &#1605;&#1607;&#1606;&#1583;&#1587;&#1740; &#1575;&#1585;&#1578;&#1576;&#1575;&#1591;&#1575;&#1578; &#1587;&#1581;&#1585;</title>
</head>


<%
    dim id,p
    id=Session("sid")
  if id<>SESSION.SESSIONID  then
    response.redirect "login.asp"
  End if%>
<body>

<p align="center"><font color="#808000" size="5">&#1588;&#1585;&#1705;&#1578; &#1605;&#1607;&#1606;&#1583;&#1587;&#1740; &#1575;&#1585;&#1578;&#1576;&#1575;&#1591;&#1575;&#1578; &#1587;&#1581;&#1585;</font></p>
<form method="POST" action="card1.asp" style="border: 1px solid #C0C0C0">
  <p align="right" dir="rtl"><span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;
  </span><font color="#000080">&#1588;&#1605;&#1575;&#1585;&#1607; &#1587;&#1585;&#1610;&#1575;&#1604;:</font><input type="text" name="T1" size="15" style="font-size: 12pt; border-style: solid; border-width: 1">&nbsp;&nbsp;&nbsp;&nbsp;<font color="#000080">&#1578;&#1575;
  </font>&nbsp;<input type="text" name="T3" size="15" style="font-size: 12pt; border-style: solid; border-width: 1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <font color="#000080">&nbsp; &#1578;&#1593;&#1583;&#1575;&#1583; :</font>&nbsp;<input type="text" name="T4" size="4" style="font-size: 12pt; border-style: solid; border-width: 1">&nbsp;<font color="#000080">
  <span lang="en-us">&nbsp;&nbsp; </span>&nbsp;&nbsp; <span lang="en-us">&nbsp;
  </span>&#1602;&#1740;&#1605;&#1578; &#1607;&#1585;&#1593;&#1583;&#1583;:&nbsp; </font>
  <input type="text" name="T5" size="4" style="font-size: 12pt; border-style: solid; border-width: 1"><font color="#000080">&nbsp; 
  &#1585;&#1740;&#1575;&#1604;&nbsp; </font></p>
  <p align="right" dir="rtl">&nbsp;</p>
  <p align="right" dir="rtl"><font color="#000080">&nbsp;&nbsp;&nbsp;&nbsp; 
  &#1606;&#1608;&#1593; &#1705;&#1575;&#1585;&#1578;:</font><select size="1" name="D1">
  <option value="5 Hours">5 Hours</option>
  <option value="10 Hours">10 Hours</option>
  </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
  <p align="right" dir="rtl">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
  <p align="right" dir="rtl">&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" value="&#1606;&#1602;&#1583;&#1740;" checked name="R1"><font color="#000080">&#1606;&#1602;&#1583;&#1740;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="R1" value="&#1594; &#1606;&#1602;&#1583;&#1740;"> &#1594;&#1610;&#1585; &#1606;&#1602;&#1583;&#1740;</font></p>
  <p align="right" dir="rtl">&nbsp;</p>
  <p align="right" dir="rtl"><font color="#000080"><span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&#1606;&#1605;&#1575;&#1740;&#1606;&#1583;&#1607; 
  - &#1606;&#1607;&#1575;&#1583; :</font><input type="text" name="T2" size="36" style="border-style: solid; border-width: 1"></p>
  <p align="center">&nbsp;</p>
  <p align="center"><input type="reset" value="Reset" name="B2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" value="Submit" name="B1"></p>
</form>

<p dir="rtl">&nbsp;&nbsp; </p>

</body>

</html>