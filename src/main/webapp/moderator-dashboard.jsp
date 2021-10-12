<%@ page import="Services.Impls.CustomerService" %>
<%@ page import="Repositories.Impls.CustomerRepository" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="Domain.Ticket" %>
<%@ page import="java.util.List" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="static Util.TimeUtil.nowToLocalDateTime" %>
<%@ page import="Util.Context" %>
<%@ page import="Domain.Customer" %>
<%@ page import="Domain.Moderator" %>
<%@ page import="Domain.Company" %>
<%@ page contentType="text/html;charset=UTF-8" %>


<html>
<head>
    <title>moderator dashboard</title>
    <jsp:include page="bootstrap/css.jsp"/>
</head>
<body>
<%
    Moderator moderator = Context.getCurrentModerator();
    RequestDispatcher rd = request.getRequestDispatcher("moderator-login.jsp");

    if (moderator == null)
        rd.forward(request, response);
    if (session.getAttribute("currentModerator") == null) {
        rd.forward(request, response);
    }
    response.setHeader("Cache-Control", "no-cache ,no-store ,must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
%>
<jsp:include page="components/topHeader.jsp"/>
<% Company company = moderator.getCompany();
    boolean noCompany = company == null;%>

<br>
<div class="d-flex justify-content-start">


    <a
            style="margin: 0.5rem"
            role="button"
            class="btn btn-outline-success m-6"
            href="add-tickets.jsp">
         add tickets
    </a>

    <a
            style="margin: 0.5rem"
            role="button"
            class="btn btn-outline-success "
            href="mod-logout">
        logout
    </a>
</div>
<br>
<br>
<div class="all-classes-container" style="text-align: center">
    <h3>
        Moderator Dashboard
    </h3>
</div>
<br>
<br>

<div class="m-5">
    <p> first name : <%=moderator.getFirstName()%>
    </p>
    <p>last name : <%=moderator.getLastName()%>
    </p>
    <p> user name : <%=moderator.getUserName()%>
    </p>
    <p> company name : <%=noCompany ?"none":company.getBrandName()%>
    </p>
    <p> company balance : <%=noCompany ?"none":company.getBalance()%>
    </p>
</div>


<div class="all-classes-container" style="text-align: center">
    <h5>
        tickets sold list
    </h5>
</div>
<br>
<br>
<div class="table-responsive">
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">ticket unique id</th>
            <th scope="col">moving-date</th>
            <th scope="col">arriving-date</th>
            <th scope="col">price</th>
            <th scope="col">from</th>
            <th scope="col">to</th>
            <th scope="col">owner name</th>
            <th scope="col">owner last name</th>
            <th scope="col">owner unique id</th>

        </tr>
        </thead>
        <tbody>

        <%
            String emptySearchTable =
                    "<tr><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr>";
            int i = 1;
            String pattern = " yyyy-mm-dd hh:mm ";
            DateTimeFormatter form = DateTimeFormatter.ofPattern(pattern);


            List<Ticket> tickets = Context.getModeratorService().viewListOfCompanyTickets();
            if (tickets != null) {

                for (Ticket ticket : tickets) {
                    out.println("<tr>");
                    out.println("<th scope=\"row\"> " + i + "</th> \n");
                    out.println(" <td> " + ticket.getId() + "</td>");
                    out.println(" <td> " + ticket.getMovingDate().format(form) + "</td>");
                    out.println(" <td> " + ticket.getArrivingDate().format(form) + "</td>");
                    out.println(" <td> " + ticket.getPrice() + "</td>");
                    out.println(" <td> " + ticket.getHome() + "</td>");
                    out.println(" <td> " + ticket.getDestination() + "</td>");
                    LocalDateTime now = nowToLocalDateTime();
                    LocalDateTime oneHourAgo = now.minusHours(1);
                    LocalDateTime movingDate = ticket.getMovingDate();
                    Customer owner = ticket.getOwner();
                    boolean notSold = owner == null;
                    out.println(" <td> " + (notSold ? "none" : owner.getFirstName()) + "</td>");
                    out.println(" <td> " + (notSold ? "none" : owner.getLastName()) + "</td>");
                    out.println(" <td> " + (notSold ? "none" : owner.getId()) + "</td>");
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
