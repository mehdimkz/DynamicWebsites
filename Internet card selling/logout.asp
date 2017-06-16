<%@Language=Vbscript%>

<!--#include Virtual="/Adovbs.inc"-->
<%
 
Session.Abandon
 response.redirect "login.asp"

%>
<html>
  <body>
     you have logged out.
  </body>
  </html>