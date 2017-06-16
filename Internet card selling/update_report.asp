<%@Language=Vbscript%>
<!--#include Virtual="/Adovbs.inc"-->

<%response.buffer=true%>
<html>
<%
    dim id,p
    id=Session("sid")
  
  if id<>SESSION.SESSIONID  then
    response.redirect "login.asp"
  End if%> 
<head>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=windows-1253">
  <meta http-equiv="Content-Language" content="fa">
  <meta name="GENERATOR" content="Microsoft FrontPage 4.0">
  <meta name="ProgId" content="FrontPage.Editor.Document">
<title>SAHAR-REPORT</title>
<!--#include file="irandate.asp"-->
<body><% 
    
     dim strsql,res,objrs,z
  
    
      Dim filePath		
				
       z=request.querystring("h")
			
	
			filePath = Server.MapPath("saharcard.mdb")

        Set objconn = Server.CreateObject("ADODB.Connection")
			objconn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & filePath
            
				 
   sql = "Select * From Table2 where ID="+Cstr(z)+""
    set objrs=Server.CreateObject("AdoDB.Recordset")
   objrs.open sql,objconn, ,adlockoptimistic 
 
        objrs("CASHDATE")=IranDate 
        objrs("TCASH")="&#1606;&#1602;&#1583;&#1740;"
        
           
        objrs.Update
         Response.Write "This Record Updated."&"<br>" 

    %>


</body>

</html>