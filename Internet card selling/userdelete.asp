<%@Language=Vbscript%>

<!--#include Virtual="/Adovbs.inc"-->
<%response.buffer=true%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Language" content="fa">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>????</title>
</head>
<%dim res
   dim strsql,a1,objrs,a2,i,j,w(30)
   
        dim objconn,sql
        Dim filePath		

			
			
			filePath = Server.MapPath("saharcard.mdb")


						
			Set objconn = Server.CreateObject("ADODB.Connection")
			objconn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & filePath



    i=1
    j=0 
     
    a1=request.form("del")
    a1=replace(a1," ","",1)
    z=len(a1)
    do while z>=0 
      w(j)=mid(a1,i,1)
      i=i+1
      j=j+1
      z=z-1 
      if (mid(a1,i,1)=",") or (z=0)then
         a2=join(w,"")
         sql = "DELETE  From Table3 where ID="+Cstr(a2)+""                        
         Set objRS = objConn.Execute(sql)            
         w(0)=""
         w(1)=""
         i=i+1
         j=0            
       
         
     End if
  loop
    
    strSQL="SELECT * FROM Table3 WHERE ID>0"     
    set objrs=Server.CreateObject("AdoDB.Recordset")
    objrs.Open strSQL,objconn,,adlockoptimistic

    
        %>

<body>

<div align="center">
  <center>
  <table border="0" width="460" height="27">
    <tr>
      
      <td width="81" height="27" bgcolor="#CCFFCC"><font size="1" face="Nesf"><b>&nbsp;  
        کلمه عبور</b></font></td>  
      <td width="100" height="27" bgcolor="#CCFFCC"><font size="1" face="Nesf"><b>&nbsp;&nbsp;  
        نام کاربري</b></font></td>  
      <td width="43" height="27" bgcolor="#CCFFCC"><font size="1" face="Nesf"><b>&nbsp;حذف&nbsp;</b></font></td>
    </tr>
     <%
                    
    do while Not objrs.Eof
     
        
       Response.write"<TD valign=middle align=middle><font size=1 face=Nesf>"& objrs("PASSWORD")&"</TD>"
       Response.write"<TD valign=middle align=middle><A Href=ue.asp?z="+Cstr(objrs("ID"))+"><font size=1 face=Nesf>"& objrs("USERNAME")&"</TD></A>" 
       Response.write"<TD valign=middle align=middle><form method=post action=userdelete.asp><input type=checkbox name=del value="&objrs("ID")&"></TD></TR>"
    
       objrs.MoveNext
    loop%>  
    
  </table>
  </center>
</div>

<p dir="rtl"><font size="1" face="Nesf"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
</b><font color="#FF0000">.براي ويرايش مشخصات کاربر روي   
نام کاربري آن کليک نماييد</font></font></p>  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
<INPUT TYPE=SUBMIT VALUE=" حذف ">
</FORM>   

</body>

</html>
