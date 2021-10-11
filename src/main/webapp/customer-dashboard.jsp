<%--
  Created by IntelliJ IDEA.
  User: derian
  Date: 11.10.21
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  %>


<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    if(session.getAttribute("currentCustomer")==null){
        response.sendRedirect("login.jsp");
    }
%>

</body>
</html>
