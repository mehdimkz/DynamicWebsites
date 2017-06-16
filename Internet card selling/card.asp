<%language=vbscript%>
<!--#include file="irandate.asp"-->
<!--#include virtual="/adovbs.inc"-->

   <html>
      <body>
 <title>SAHAR-Co</title>



<%
    dim id,p
    id=Session("sid")
  
  if id<>SESSION.SESSIONID  then
    response.redirect "login.asp"
  End if%> 
        <%
             dim objconn,objrs


                    		
					
			Dim filePath		

			
			
			filePath = Server.MapPath("saharcard.mdb")


						
			Set objconn = Server.CreateObject("ADODB.Connection")
			objconn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & filePath

             
             

              set objrs=Server.CreateObject("AdoDB.Recordset")
               objrs.Open "Table1",objconn,,adlockoptimistic,adcmdtable

         if((Request.Form("T1") ="") ) then
%>
 <p dir="rtl"><span lang="fa"><font color="#000080">&#1604;&#1591;&#1601;&#1575; &#1601;&#1610;&#1604;&#1583; </font>
<font color="#FF0000">&#1587;&#1585;&#1610;&#1575;&#1604;</font><font color="#000080"> &#1585;&#1575; &#1705;&#1575;&#1605;&#1604; &#1606;&#1605;&#1575;&#1610;&#1610;&#1583;.&nbsp;
<a href="index.asp">&#1576;&#1575;&#1586;&#1711;&#1588;&#1578;</a></font></span></p>


<%          
   
   Else  



              objrs.addnew
              objrs("CDATE")=IranDate
               objrs("CID")=request.form("T1")
              objrs("TCARD")=request.form("D1")
              objrs("TCASH")=request.form("R1")
              objrs("DES")=request.form("T2")
    
                
               objrs.update%>
                <p dir="rtl"><font face="Nesf" size="2" color="#FF0000">&#1705;&#1575;&#1585;&#1578; &#1605;&#1608;&#1585;&#1583; &#1606;&#1592;&#1585; &#1583;&#1585; &#1587;&#1740;&#1587;&#1578;&#1605; 
&#1579;&#1576;&#1578; &#1711;&#1585;&#1583;&#1740;&#1583;.&nbsp;&nbsp; <a href="index.htm">&#1576;&#1575;&#1586;&#1711;&#1588;&#1578;</a></font></p>

        
                
          <%     objrs.close
                set objrs=nothing
                 objconn.close
                set objconn=nothing
End if

%>
    </body>
</html>    
                 