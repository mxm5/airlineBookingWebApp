<%@ page import="Services.Impls.CustomerService" %>
<%@ page import="Repositories.Impls.CustomerRepository" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="Domain.Ticket" %>
<%@ page import="java.util.List" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="static Util.TimeUtil.nowToLocalDateTime" %>
<%@ page import="Util.Context" %>
<%@ page import="Domain.Customer" %><%--
  Created by IntelliJ IDEA.
  User: derian
  Date: 11.10.21
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>


<html>
<head>
    <title>Title</title>
    <jsp:include page="bootstrap/css.jsp"/>
</head>
<body>
<%
    Customer customer = Context.getCurrentCustomer();
    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");

    if (customer==null)
        rd.forward(request,response);
    if (session.getAttribute("currentCustomer") == null) {
        rd.forward(request,response);
    }
    response.setHeader("Cache-Control", "no-cache ,no-store ,must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
%>
<jsp:include page="components/topHeader.jsp"/>
<br>
<div class="d-flex justify-content-start">



    <a
            style="margin: 0.5rem"
            role="button"
       class="btn btn-outline-primary m-6"
       href="addbalance.jsp">
        add balance
    </a>

    <a
            style="margin: 0.5rem"
            role="button"
       class="btn btn-outline-primary "
       href="customerlogout">
         logout
    </a>    <a
            style="margin: 0.5rem"
            role="button"
       class="btn btn-outline-primary "
       href="index.jsp">
         go to main page
    </a>
</div>
<br>
<br>
<div class="all-classes-container" style="text-align: center">
    <h3>
        User Dashboard
    </h3>
</div>
<br>
<br>

<div class="m-5">
<p> first name : <%=customer.getFirstName()%></p>
<p>last name  : <%=customer.getLastName()%></p>
<p> user name  : <%=customer.getUserName()%></p>
<p> user balance : <%=customer.getBalance()%></p>
</div>


<div class="all-classes-container" style="text-align: center">
    <h5>
        tickets bought list
    </h5>
</div>
<br>
<br>
<div class="table-responsive">
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">moving-date</th>
            <th scope="col">arriving-date</th>
            <th scope="col">price</th>
            <th scope="col">from</th>
            <th scope="col">to</th>
            <th scope="col">discount</th>
        </tr>
        </thead>
        <tbody>

        <%
            String emptySearchTable =
                    "<tr><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>";
            int i = 1;
            CustomerService customerService = new CustomerService(new CustomerRepository());
            String pattern = " yyyy-mm-dd hh:mm ";
            DateTimeFormatter form = DateTimeFormatter.ofPattern(pattern);


            List<Ticket> tickets = customerService.getAllBoughtTickets();
            if (tickets != null) {

                for (Ticket ticket : tickets) {
                    out.println("<tr>");
                    out.println("<th scope=\"row\"> " + i + "</th> \n");
                    out.println(" <td> " + ticket.getMovingDate().format(form) + "</td>");
                    out.println(" <td> " + ticket.getArrivingDate().format(form) + "</td>");
                    out.println(" <td> " + ticket.getPrice() + "</td>");
                    out.println(" <td> " + ticket.getHome() + "</td>");
                    out.println(" <td> " + ticket.getDestination() + "</td>");
                    LocalDateTime now = nowToLocalDateTime();
                    LocalDateTime oneHourAgo = now.minusHours(1);
                    LocalDateTime movingDate = ticket.getMovingDate();
                    if (movingDate.isAfter(oneHourAgo) && movingDate.isBefore(now))
                        out.println("   <td>50% off </td>");
                    else
                        out.println("   <td>none </td>");
                    out.println("</tr>");
                    i++;
                }
            } else {
                out.println(
                        emptySearchTable
                );
            }

        %>
        </tbody>
    </table>
</div>
<jsp:include page="components/spacer.jsp"/>
<jsp:include page="bootstrap/js.jsp"/>
</body>
</html>
