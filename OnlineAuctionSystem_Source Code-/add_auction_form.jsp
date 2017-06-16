<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>&#1606;&#1575;&#1605; &#1603;&#1575;&#1604;&#1575;</title>
</head>
<%if (session.getId()!= session.getAttribute( "sid" )) 
    response.sendRedirect("http://localhost/bid/info2.htm");%>
<body bgcolor="#999966">
<form method="post" action="http://localhost/bid/add_auction.jsp" name="upform" >
  <p align="center"><span lang="fa">
  <font face="Tahoma" size="5" color="#FF0000">&#1575;&#1610;&#1580;&#1575;&#1583; &#1605;&#1586;&#1575;&#1610;&#1583;&#1607;</font></span></p>
  <table width="60%" border="0" cellspacing="1" cellpadding="1" align="center" height="194">
    <tr>
      <td align="left" height="199">
        &nbsp;<table width="100%" border="0" cellspacing="0" cellpadding="0" class="style1" height="184">
          <tr>
            <td height="54"><b>&nbsp;</b><span lang="fa"><font size="1" face="Tahoma"><input name="productname" size="35" style="font-family: Nesf; float:right"></font></span></td>
            <td dir="rtl" height="54"> 
            <p dir="rtl"> <font face="Tahoma" size="2">&#1606;&#1575;&#1605;
      <span lang="fa">&#1603;&#1575;&#1604;&#1575;</span>:</font></td>
          </tr>
          <tr>
            <td height="32">
            <p align="right"><font face="Tahoma" size="2"> <span lang="fa"><select size="1" name="D1" style="font-family: Nesf">
      <option value="400">&#1603;&#1575;&#1605;&#1662;&#1610;&#1608;&#1578;&#1585;</option>
      <option value="200">&#1605;&#1608;&#1575;&#1583; &#1594;&#1584;&#1575;&#1610;&#1610;</option>
      <option value="300">&#1603;&#1575;&#1604;&#1575;&#1607;&#1575;&#1610; &#1589;&#1606;&#1593;&#1578;&#1610;</option>
      <option value="100">&#1589;&#1606;&#1575;&#1610;&#1593; &#1583;&#1587;&#1578;&#1610;</option>
      <option value="500">&#1662;&#1608;&#1588;&#1575;&#1603;</option>
      <option value="600">&#1570;&#1585;&#1575;&#1610;&#1588;&#1610; &#1608; &#1576;&#1607;&#1583;&#1575;&#1588;&#1578;&#1610;</option>
      <option value="700">&#1604;&#1608;&#1575;&#1586;&#1605; &#1582;&#1575;&#1606;&#1711;&#1610;</option>
      <option value="800">&#1603;&#1575;&#1604;&#1575;&#1610; &#1608;&#1585;&#1586;&#1588;&#1610;</option>
      <option value="900">&#1587;&#1575;&#1610;&#1585;...</option>
      </select></span></font></td>
            <td dir="rtl" height="32"> 
              &nbsp;<font face="Tahoma" size="2"><span lang="fa">&#1583;&#1587;&#1578;&#1607; &#1603;&#1575;&#1604;&#1575;:</span></font></td>
          </tr>
          <tr>
            <td height="38"><span lang="fa"><font size="1" face="Tahoma">
            <input name="unit" size="35" style="font-family: Tahoma; float:right"></font></span></td>
            <td dir="rtl" height="38"> <font face="Tahoma" size="2"><span lang="fa">&nbsp;&#1578;&#1593;&#1583;&#1575;&#1583;:</span></font></td>
          </tr>
          <tr>
            <td height="22"><span lang="fa"><font size="1" face="Tahoma">
            <input name="price" size="35" style="font-family: Tahoma; float:right"></font></span></td>
            <td dir="rtl" height="22"> 
              <font face="Tahoma" size="2"><span lang="fa">&#1602;&#1610;&#1605;&#1578;</span> <span lang="fa">
              &#1662;&#1575;&#1610;&#1607;:</span></font></td>
          </tr>
          </table>
      </td>
    </tr>
    <tr>
      <td align="left" height="1"></td>
    </tr>
    <tr>
      <td align="right" height="1">
      <p align="center">
      </td>
    </tr>
    <tr>
      <td align="right" height="27">
        <input type="hidden" name="todo" value="upload">
        <p align="center">
        <font face="Tahoma">
        <a href="form_upload.htm">&#1575;&#1604;&#1589;&#1575;&#1602; &#1578;&#1589;&#1608;&#1610;&#1585; &#1603;&#1575;&#1604;&#1575;</a></font><p align="center">
<font face="Tahoma"><% if(session.getAttribute( "imagefile")!=null) 
out.println(session.getAttribute( "imagefile"));%></font><p align="center">
        
        <b>
        <input type="submit" name="Submit" value="&#1578;&#1575;&#1610;&#1610;&#1583;"></b> <b>
        <input type="reset" name="Reset" value="&#1575;&#1606;&#1589;&#1585;&#1575;&#1601;"></b>


        </td>
    </tr>
  </table>
  <br>
  <br>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p align="center">&nbsp;</p>
</form>
</body>

</html>