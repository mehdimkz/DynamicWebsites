<%@Language=Vbscript%>

<!--#include Virtual="/Adovbs.inc"-->
<%response.buffer=true%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Language" content="fa">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>SAHAR-REPORT</title>
</head>


<%
    dim id,p
    id=Session("sid")
  
  if id<>SESSION.SESSIONID  then
    response.redirect "login.asp"
  End if%> 
<%   
              
   dim strsql,res,objrs,strsql1,objrs1,w(7),m(7),w0,w1,w2,w3,res1,res3,r1  
  
    
      Dim filePath,Z,sum		

			
			
			filePath = Server.MapPath("saharcard.mdb")


					
			Set objconn = Server.CreateObject("ADODB.Connection")
			objconn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & filePath
            

              set objrs=Server.CreateObject("AdoDB.Recordset")
               objrs.Open "Table2",objconn,,adlockoptimistic,adcmdtable
   form
   %>
<body>
<p dir="rtl"><span lang="fa">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&#1576;&#1587;&#1605;&#1607; &#1578;&#1593;&#1575;&#1604;&#1740;</span></p>
<p dir="rtl"><span lang="fa"><b><i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&#1578;&#1575;&#1585;&#1740;&#1582;:</i></b> <font color="#FF0000" face="Nesf">
<%response.write res1%></font><b>&nbsp; &#1604;&#1594;&#1575;&#1740;&#1578; </b>
<font face="Nesf">&nbsp;</font><font color="#FF0000" face="Nesf"><%response.write res3%></font><i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    فروش نمایندگان و نهادها</i></span></p>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1" bordercolorlight="#808080" bgcolor="#C0C0C0" height="37">
  <tr>
    <td width="40%" align="center" bgcolor="#FFCC66" height="7">
    <font color="#800000"><b><span lang="fa">&#1578;&#1608;&#1590;&#1740;&#1581;&#1575;&#1578;</span></b></font></td>
    <td width="10%" align="center" bgcolor="#FFCC66" height="7">
    <span lang="fa"><font color="#800000"><b>&#1578;&#1575;&#1585;&#1740;&#1582; &#1578;&#1587;&#1608;&#1740;&#1607;</b></font></span></td>
    <td width="10%" align="center" bgcolor="#FFCC66" height="7">
    <span lang="fa"><font color="#800000"><b>&#1580;&#1605;&#1593; &#1705;&#1604; </b></font></span></td>
    <td width="6%" align="center" bgcolor="#FFCC66" height="7">
    <font color="#800000"><b><span lang="fa">&#1608;&#1590;&#1593;&#1740;&#1578;</span></b></font></td>
    <td width="8%" align="center" bgcolor="#FFCC66" height="7">
    <span lang="fa"><font color="#800000"><b>&#1602;&#1740;&#1605;&#1578; &#1608;&#1575;&#1581;&#1583;</b></font></span></td>
    <td width="10%" align="center" bgcolor="#FFCC66" height="7">
    <font color="#800000"><b><span lang="fa">&#1606;&#1608;&#1593; &#1705;&#1575;&#1585;&#1578;</span></b></font></td>
    <td width="6%" align="center" bgcolor="#FFCC66" height="7">
    <font color="#800000"><b>&#1578;&#1593;&#1583;&#1575;&#1583;</b></font></td>
    <td width="42%" align="center" bgcolor="#FFCC66" height="7">
    <font color="#800000"><b><span lang="fa">&#1587;&#1585;&#1740;&#1575;&#1604;</span></b></font></td>
    <td width="11%" align="center" bgcolor="#FFCC66" height="7">
    <font color="#800000"><b><span lang="fa">&#1578;&#1575;&#1585;&#1740;&#1582;</span></b></font></td>
    <td width="6%" align="center" bgcolor="#FFCC66" height="7">
    <p dir="rtl"><font color="#800000"><b><span lang="fa">&#1585;&#1583;&#1740;&#1601;</span></b></font></td>
  </tr>




    <%  
    Z=1 
    sum=0          
    do while Not objrs.Eof
       form
       datadate

     if (Clng(res1)<=r1 And r1<=Clng(res3)) then  
     
     sum=Clng(objrs("PRICE")*objrs("NUM"))+sum
%>
    
      
  <tr>
    <td width="40%" bgcolor="#FFFFFF" height="29">
    <p dir="rtl"><font color="#000080"><span lang="fa"><%Response.write objrs("DES")%></span></font></td>
    <td width="10%" bgcolor="#FFFFFF" height="29">
    <p align="center"><span lang="fa"><font color="#000080"><%Response.write objrs("CASHDATE")%></font></span></td>
    <td width="10%" bgcolor="#FFFFFF" height="29">
    <p align="center"><font color="#000080"><%response.write Clng(objrs("PRICE")*objrs("NUM"))%></font></td>
    <td width="6%" bgcolor="#FFFFFF" height="29">
    <p align="center"><font color="#000080"><span lang="fa"><%Response.write objrs("TCASH")%></span></font></td>
    <td width="8%" bgcolor="#FFFFFF" height="29">
    <p align="center"><font color="#000080"><%Response.write objrs("PRICE")%></font></td>
    <td width="10%" bgcolor="#FFFFFF" height="29">
    <p align="center"><font color="#000080"><span lang="fa"></span><%Response.write objrs("TCARD")%></font></td>
    <td width="6%" bgcolor="#FFFFFF" height="29">
    <p align="center"><span lang="fa"><font color="#000080"><%Response.write objrs("NUM")%></font></span></td>
    <td width="42%" bgcolor="#FFFFFF" height="29">
    <p align="center"><font color="#000080"><span lang="fa"><%Response.write objrs("CID1")%></span> 
    -<%Response.write objrs("CID2")%></font></td>
    <td width="11%" bgcolor="#FFFFFF" height="29">
    <p align="center"><font color="#000080"><span lang="fa"><%Response.write objrs("CDATE")%></span></font></td>
    <td width="6%" bgcolor="#FFFFFF" height="29">
    <p align="center"><font color="#000080"><span lang="fa"><%Response.write Z%></span></font></td>
  </tr>













<%

Z=Z+1

     End If 
       objrs.MoveNext
    loop
    
    
    sub form 
           w0=request.form("D1")
           w1=request.form("D2")
           w2=request.form("D3")
           w(0)=mid(w0,1,1)           
           w(1)=mid(w0,2,1)
           w(2)=mid(w0,3,1)           
           w(3)=mid(w0,4,1)
           w(4)=mid(w1,1,1)           
           w(5)=mid(w1,2,1)           
           w(6)=mid(w2,1,1)           
           w(7)=mid(w2,2,1)           
           res1=join(w,"")
            w0=request.form("D4")
           w1=request.form("D5")
           w2=request.form("D6")   
           w(0)=mid(w0,1,1)           
           w(1)=mid(w0,2,1)
           w(2)=mid(w0,3,1)           
           w(3)=mid(w0,4,1)
           w(4)=mid(w1,1,1)           
           w(5)=mid(w1,2,1)           
           w(6)=mid(w2,1,1)           
           w(7)=mid(w2,2,1)           
           res3=join(w,"")
          

           End Sub
                                                                                 
    sub datadate
    
       
         w3=objrs("CDATE")
         
        if mid(w3,5,1)="/" and mid(w3,7,1)="/" and mid(w3,9,1)="" then
           r1=Replace(w3,"/","0",1)    
          End if   
         if mid(w3,5,1)="/" and mid(w3,7,1)="/" and mid(w3,9,1)<>"" then
            r1=Replace (w3,"/","0",1,1)
            r1=Replace (r1,"/","",1) 
           End if
         if mid(w3,5,1)="/" and mid(w3,8,1)="/" and mid(w3,10,1)="" then
           r1=Replace (w3,"/","",1,1)
           r1=Replace (r1,"/","0",1)              
         End if  
       
         if mid(w3,5,1)="/" and mid(w3,8,1)="/" and mid(w3,10,1)<>"" then   
            r1=Replace(w3,"/","",1)
           End if
        
       
         
                             
   
         r1=Clng(r1)


      End Sub




       %>


    
  </table>
  </center>
</div>
<p align="right" dir="rtl"><span lang="fa">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>&#1580;&#1605;&#1593; 
&#1705;&#1604;</b>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>
<font size="4" color="#008080" face="Tahoma"><%response.write sum%></font></b>&nbsp;&nbsp;&nbsp;&nbsp;
<b>&#1585;&#1740;&#1575;&#1604;</b></span></p>

</body>

</html>
