<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>File Download</title>
</head>
<body>
<h1>File Download</h1>
<%
    String FileName = "sample";
    String FilePath = "C:\\Users\\DT011\\Desktop\\";

    response.setContentType("application/octet-stream");
    response.setHeader("Content-Disposition", "attachment; filename=\"" + FileName + "\"");

    java.io.FileInputStream fileInputStream = new java.io.FileInputStream(FilePath + FileName);

    int i;
    while ((i = fileInputStream.read()) != -1) {
        out.write(i);
    }
    fileInputStream.close();
%>
</body>
</html>
