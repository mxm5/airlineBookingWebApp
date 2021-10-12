<%--
  Created by IntelliJ IDEA.
  User: derian
  Date: 12.10.21
  Time: 03:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add balance</title>
    <jsp:include page="bootstrap/css.jsp"/>
</head>
<body>
<%
    response.setHeader("Cache-Control", "no-cache ,no-store ,must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
    if (session.getAttribute("currentCustomer") == null) {
        response.sendRedirect("login.jsp");
    }
%>
<jsp:include page="components/spacer.jsp"/>
<div class="all-classes-container" style="text-align: center">
    <h3>
        add balance
    </h3>
</div>
<br>
<br>
<form class="container" action="addbalance" method="POST">
    <div class="form-group">
        <label for="amount">enter the amount you want to add to your balance</label>
        <br/>
        <input
                type="number"
                class="form-control p"
                size="55"
                id="amount"
                aria-describedby="emailHelp"
                placeholder="Enter user name "
                name="am"
        />
        <br/>
    </div>


    <button type="submit" class="btn btn-primary p">Submit</button>
</form>
<jsp:include page="components/spacer.jsp"/>
<%
    String lable ="";
    Object err = request.getAttribute("er");
    Object sc = request.getAttribute("sc");
    if (err != null ) {
        lable = err.toString();
        out.println("" +
                "<div class=\"alert alert-danger m-6\" role=\"alert\" style=\"margin: 7rem ; margin-top: 0\">\n" +
                lable +
                "</div>");
    }
    if (err == null && sc != null) {
        lable = sc.toString();
        out.println("" +
                "<div class=\"alert alert-success m-6\" role=\"alert\" style=\"margin: 7rem ; margin-top: 0\">\n" +
                lable +
                "</div>");
    }

%>


<jsp:include page="bootstrap/js.jsp"/>
</body>
</html>
