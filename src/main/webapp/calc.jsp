<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.DecimalFormat" %><%--
  Created by IntelliJ IDEA.
  User: krzys
  Date: 09/10/2024
  Time: 13:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="errorPage.jsp" %>
<html>
<head>
    <title>Calc</title>
</head>
<body>
<%= new Date() %> <br>
<%
    DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    Date now = new Date();
    String date = dateFormat.format(now);
%>
<%= date %>

<form method="POST" action="calc.jsp">
    Kwota: <input type="number" name="k"/><br>
    oprocentowanie roczne: <input type="number" name="pr"/><br>
    liczba rat: <input type="number" name="n"/><br>
    <button type="submit" name="wyslij">Oblicz ratę</button>
</form>

<% if (request.getParameter("wyslij") != null) {
    String res = "";
    try {
        Double k = Double.parseDouble(request.getParameter("k"));
        Double pr = Double.parseDouble(request.getParameter("pr"))/100;
        Double n = Double.parseDouble(request.getParameter("n"));
        Double p = pr / 12;
        Double rata = (k * p) / (1 - (1 / Math.pow(1 + p, n)));

        DecimalFormat df = new DecimalFormat("#.00");
        String rataf = df.format(rata);
        res = "Rata miesięczna: " + rataf;
        
    } catch (Exception ex) {
        res = "";
    }
    
    out.println(res);
} else {
    out.println("");
}
%>
</body>
</html>
