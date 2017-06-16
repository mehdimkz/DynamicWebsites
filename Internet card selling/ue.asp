<%@Language=Vbscript%>

<!--#include Virtual="/Adovbs.inc"-->
<%response.buffer=true%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Language" content="fa">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>New Page 1</title>
</head>
<%
dim a1,objrs
 a1=request.querystring("z")

   
        dim objconn,sql
        Dim filePath		

			
			
			filePath = Server.MapPath("saharcard.mdb")


						
			Set objconn = Server.CreateObject("ADODB.Connection")
			objconn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & filePath

   sql = "Select * From Table3 where ID="+Cstr(a1)+""     
   set objrs=Server.CreateObject("AdoDB.Recordset")
   objrs.open sql,objconn%>

<body>

<div align="right">
  <table border="0" width="250" height="203">
    <tr>
      <td width="250" height="203">&nbsp;
        <form method="POST" action="uec.asp?z=<%response.write (a1) %>">
        
          <p>&nbsp;</p>
          <p><font size="1" face="Nesf"><b><input type="text" name="username" size="15" value="<%response.write objrs("USERNAME") %>">:نام        
          کاربري</b></font></p>
          <p><input type="text" name="password" size="15" value="<%response.write objrs("PASSWORD") %>"><font size="1" face="Nesf"><b>:کلمه        
          عبور</b></font></p>
          <p><font size="1" face="Nesf"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        
          
          <p><input type="submit" value="تاييد" name="B1"><input type="reset" value="جديد" name="B2"></p>
          <p>&nbsp;</p>
        </form>
        <p>&nbsp;</td>
    </tr>
  </table>
</div>

</body>

</html>
