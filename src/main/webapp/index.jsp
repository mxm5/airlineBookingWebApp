<%@ page import="Services.Impls.CustomerService" %>
<%@ page import="Repositories.Impls.CustomerRepository" %>
<%@ page import="Domain.enums.OrderBy" %>
<%@ page import="Domain.Ticket" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="static Util.TimeUtil.*" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.util.List" %>

<!doctype html>
<html lang="en">
<head>
    <title>airline booking</title>
    <jsp:include page="bootstrap/css.jsp"/>

</head>
<body>
<%
    String home = request.getParameter("home");
    String destination = request.getParameter("destination");

%>
<jsp:include page="components/topHeader.jsp"/>
<jsp:include page="components/navbarMenu.jsp"/>
<jsp:include page="components/searchForm.jsp"/>
<jsp:include page="components/spacer.jsp"/>
<div class="table-responsive">
    <table class="table table-striped table-hover">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">moving-date</th>
            <th scope="col">arriving-date</th>
            <th scope="col">price</th>
            <th scope="col">from</th>
            <th scope="col">to</th>
            <th scope="col">discount</th>
            <th scope="col" ></th>
        </tr>
        </thead>
        <tbody>
        <%
            String emptySearchTable =
                    "<tr><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td></td></tr>";
            int i = 1;
            CustomerService customerService = new CustomerService(new CustomerRepository());
            String pattern = " yyyy-mm-dd hh:mm ";
            DateTimeFormatter form = DateTimeFormatter.ofPattern(pattern);
            if (home != null && destination != null) {

                List<Ticket> tickets = customerService.searchTicketsOrderByMovingDate(home, destination, OrderBy.Desc);
                if (tickets != null) {

                    for (Ticket ticket : tickets) {
                        out.println("<tr data-href=\"google.com\">");
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
                        if (session.getAttribute("currentCustomer") != null)
                            out.println("   <td> " +
                                    "  <a role=\"button\" class=\"btn btn-primary\" href=\"" +
                                    "buy.jsp?tk=" + ticket.getId() +
                                    "\">" +
                                    "buy" +
                                    "</a>" +
                                    " </td>");
                        else
                            out.println("<td></td>");
                        out.println("</tr>");
                        i++;
                    }
                } else {
                    out.println(
                            emptySearchTable
                    );
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
