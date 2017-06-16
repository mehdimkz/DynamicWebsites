<%@Language=Vbscript%>
<%option Explicit%>
<!--#include Virtual="/Adovbs.inc"-->
<%response.buffer=true%>
 <html>
    <body>
  <% 
    
   Dim objrs,check,i,sid,pe,strsql

   Dim filePath,objconn		

			
			
			filePath = Server.MapPath("saharcard.mdb")



			
			Set objconn = Server.CreateObject("ADODB.Connection")
			objconn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & filePath

             

   check=False
   strSQL="SELECT * FROM Table3 WHERE ID>0"     
   set objrs=Server.CreateObject("AdoDB.Recordset")
   objrs.Open strSQL,objconn
   objrs.movefirst

    i=1

      Do While Not(objrs.eof or Check)
      if (strcomp(objrs("USERNAME"),request.Form("Username")_
                                   ,vbTextCompare)=0_
AND strcomp(objrs("PASSWORD"),request.Form("Password")_
                                    ,vbTextCompare)=0) then 
             
        Session("sid")=SESSION.SESSIONID
    
            
         
           Response.redirect "panle.asp"
        
       check=True
       i=2
      End if
       objrs.movenext
       Loop

    
   if (i=1) then 
   Response.write "<A Href='LOGIN.asp'>"
   Response.Write "Loggin is Failed"
   Response.Write "</A>" 
     End if
 
     objrs.Close
     Set objrs=Nothing
    
    objconn.Close
    set objconn=Nothing
   %>
      </Body>
     </Html> 