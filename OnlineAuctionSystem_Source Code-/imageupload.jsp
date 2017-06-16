<%@ page contentType="text/html;charset=windows-1252"%>
<%@ page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page import="org.apache.commons.fileupload.FileItem"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.io.File"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Process File Upload</title>
</head>
<body>
<%
      //  out.println("Content Type ="+request.getContentType());

        DiskFileUpload fu = new DiskFileUpload();
        // If file size exceeds, a FileUploadException will be thrown
        fu.setSizeMax(1000000);

        List fileItems = fu.parseRequest(request);
        Iterator itr = fileItems.iterator();

        while(itr.hasNext()) {
          FileItem fi = (FileItem)itr.next();

          //Check if not form field so as to only handle the file inputs
          //else condition handles the submit button input
          if(!fi.isFormField()) {
           String w=fi.getName();
           session.setAttribute( "imagefile", w);  
           out.println(fi.getName()); 
           File tempFileRef  = new File(fi.getName());
            File fNew = new File(application.getRealPath("/"),tempFileRef.getName());

             
            fi.write(fNew);
           response.sendRedirect("http://localhost/bid/add_auction_form.jsp");
          }
          else {

          }
        }

%>


</body>
</html>
