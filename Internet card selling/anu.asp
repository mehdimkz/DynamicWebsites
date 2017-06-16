 <%@Language=Vbscript%>
<%option Explicit%>
<!--#include Virtual="/Adovbs.inc"-->
<%response.buffer=true%>



  <% 
    
   Dim Objrs,check
    dim objconn,sql


                    		
					
			Dim filePath		

			
			filePath = Server.MapPath("saharcard.mdb")


			
			

			
			Set objconn = Server.CreateObject("ADODB.Connection")
			objconn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & filePath

             
             

              set objrs=Server.CreateObject("AdoDB.Recordset")
               objrs.Open "Table3",objconn,,adlockoptimistic,adcmdtable



   if((Request.Form("username") ="") or (Request.Form("password")="")) then 
     response.write "<A Href='newuser.asp'>"
     response.Write "You must Enter Values For All the Fieldes."
     response.write "</A>"
   Else
     if (strcomp(request.form("password"),request.Form("repassword")_
                                   ,vbTextCompare)<>0) then
           
         response.Write "<A Href='newuser.asp'>"
         response.write "PASSWORD AND REPASSWORD IS INCORECCT."
         response.write "</A>"
         response.end 
       End If 
    check=False
    set objrs=Server.CreateObject("AdoDB.Recordset")
    objrs.open "Table3",objConn, ,adlockoptimistic ,adcmdTable
    do while Not (objrs.Eof or check)
       
      if (strcomp(objrs("USERNAME"),request.Form("username")_
                                   ,vbTextCompare)=0) then
           
         response.Write "<A Href='newuser.asp'>"
         response.write "Username Already Exists."
         response.write "</A>"
         check=True
       End If
       objrs.MoveNext
     
    Loop 

     if Not Check Then
       objrs.addnew
        objrs("USERNAME")=request.form("username")
        objrs("PASSWORD")= request.form("password")
      objrs.update
      
  response.write "NewUser Created"

      End if
   End if
      objConn.Close
     
         Set objConn = Nothing
   %>
   
