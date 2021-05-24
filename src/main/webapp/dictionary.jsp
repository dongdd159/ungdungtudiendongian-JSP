<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 5/24/2021
  Time: 10:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>
<%
    dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");

    String search = request.getParameter("search");
    PrintWriter writer = response.getWriter();


    String result = dic.get(search);
    if (result != null) {
        writer.println("Word: " + search);
        writer.println("Result: " + result);
    } else {
        writer.println("Not found");
    }
%>
</body>
</html>
