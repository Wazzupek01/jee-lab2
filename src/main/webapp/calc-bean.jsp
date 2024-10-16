<%--
  Created by IntelliJ IDEA.
  User: krzys
  Date: 09/10/2024
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>calc-bean</title>
</head>
<body>
<jsp:useBean id="loan" class="org.example.lab_2.LoanBean" scope="session"/>
<jsp:setProperty name="loan" property="*"/>

<form method="POST" action="calc-bean.jsp">
Kwota: <input type="number" name="k" value="${loan.k}"/><br>
oprocentowanie roczne: <input type="number" name="pr" value="${loan.pr}"/><br>
liczba rat: <input type="number" name="n" value="${loan.n}"/><br>
<button type="submit" name="wyslij">Oblicz ratę</button>
</form>

<% if(request.getParameter("wyslij") != null) {
    out.println(loan.getRata());
}
%>
</body>
</html>
