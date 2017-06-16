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
else
   {

String[] b=request.getParameterValues("a");
      String a=b[0];
  session.setAttribute( "aid", a );  


%>

<SCRIPT language=JavaScript src="login_files/pm.js"></SCRIPT>



<TABLE id=table5 style="BORDER-COLLAPSE: collapse" borderColor=navy height=289 
cellSpacing=5 cellPadding=1 width="80%" align=center bgColor=#f7f7f7 border=0>
  <TBODY>
  <TR>
    <TD dir=rtl vAlign=top align=right bgColor=#efefef>
      <TABLE id=table6 dir=ltr style="WIDTH: 100%" cellSpacing=1 cellPadding=1 
      width="100%" align=right border=0 height="69">
        <TBODY>
        <TR>
          <TD height="66">
            <P style="DIRECTION: rtl" align=center>
            <IMG height=35 
            src="image/top-enter.gif" width=300 align=right border=0></P>
            <P style="DIRECTION: rtl" align=center>&nbsp;</P>
            <P style="DIRECTION: rtl" align=right><FONT face=tahoma 
            color=darkblue size=2><SPAN lang=en-us>&nbsp;&nbsp;&nbsp;&nbsp; 
            <IMG 
            height=10 src="image/FLESH.gif" width=10 border=0>&nbsp; 
            </SPAN>&#1604;&#1591;&#1601;&#1575; &#1602;&#1610;&#1605;&#1578; &#1662;&#1610;&#1588;&#1606;&#1607;&#1575;&#1583;&#1610; &#1582;&#1608;&#1583; &#1585;&#1575; &#1583;&#1585; &#1601;&#1585;&#1605; &#1584;&#1610;&#1604; &#1608;&#1575;&#1585;&#1583; &#1606;&#1605;&#1575;&#1610;&#1610;&#1583;: </FONT></P>
            <P style="DIRECTION: rtl" align=right>&nbsp;</P>
            <form method="POST" action="http://localhost/bid/add_bid.jsp">
              <p style="direction: rtl" align="right" dir="rtl">&nbsp;
              <span lang="fa">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </span><font face="Tahoma">&nbsp;</font><span lang="fa"><font face="Tahoma" size="2">&#1602;&#1610;&#1605;&#1578; 
              &#1662;&#1610;&#1588;&#1606;&#1607;&#1575;&#1583;&#1610;:</font> 
              <input type="text" name="bprice" size="20"></span></p>
              <p style="direction: rtl" align="right" dir="rtl"><span lang="fa">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p>
              <p style="direction: rtl" align="center">
              <input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
            </form>
            <P style="DIRECTION: rtl" align=right>&nbsp;</P>
            <P style="DIRECTION: rtl" align=right>&nbsp;</P>
            <P style="DIRECTION: rtl" align=right>&nbsp;</P></TD></TR>
        </TBODY></TABLE></TD></TR></TBODY></TABLE>
<%}
%>

</body>

</html>