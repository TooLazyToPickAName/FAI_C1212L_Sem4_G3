<%-- 
    Document   : logout
    Created on : Aug 31, 2015, 3:07:14 PM
    Author     : tinblanc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <form action="logout"> 
            <jsp:include page="login.jsp" ></jsp:include>
        </form>
    </body>
</html>
