<%--
  Created by IntelliJ IDEA.
  User: krzys
  Date: 10/10/2024
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>Error</title>
</head>
<body>
    <h2>Wprowadzono błędne dane!</h2>
    <p>Pojawił się następujący błąd:
    <%= exception.getMessage() %>. <br/>
        
</p>
</body>
</html>
