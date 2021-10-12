<%@ page import="Repositories.Impls.TicketRepository" %>
<%@ page import="Domain.Ticket" %>
<%@ page import="java.util.Optional" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="static Util.TimeUtil.nowToLocalDateTime" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="bootstrap/css.jsp"/>
</head>
<body>
<%
    response.setHeader("Cache-Control", "no-cache ,no-store ,must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
    if (session.getAttribute("currentCustomer") == null)
        response.sendRedirect("login.jsp");
    String tk = request.getParameter("tk");
    Ticket ticket = null;
    try {
        Long ticketId = Long.parseLong(tk);
        TicketRepository ticketRepository = new TicketRepository();
        Optional<Ticket> ticketOptional = ticketRepository.getById(ticketId);
        ticket = ticketOptional.orElse(null);
        if (ticket == null) throw new Exception("no tickets found");
    } catch (Exception e) {
        response.sendRedirect("index.jsp");
    }

%>

<jsp:include page="components/spacer.jsp"/>
<% assert ticket != null;
    String pattern = " yyyy-mm-dd hh:mm ";
    DateTimeFormatter form = DateTimeFormatter.ofPattern(pattern);
%>
<div class="all-classes-container" style="text-align: center">
    <h3>
        Buy ticket
    </h3>
</div>
<div style="margin: 4rem">
    <p> from :
        <%=ticket.getHome()%>
    </p>
    <p> to :
        <%=ticket.getDestination()%>
    </p>
    <p> moving date :
        <%=ticket.getMovingDate().format(form)%>
    </p>
    <p> arriving date :
        <%=ticket.getArrivingDate().format(form)%>
    </p>
    <p> provider company :
        <%=ticket.getProviderCompany().getBrandName()%>
    </p>
    <p> price :
        <%=ticket.getPrice()%>
    </p>
    <p> discount :
        <%
            double discount=0;
            LocalDateTime now = nowToLocalDateTime();
            LocalDateTime oneHourAgo = now.minusHours(1);
            LocalDateTime movingDate = ticket.getMovingDate();
            if (movingDate.isAfter(oneHourAgo) && movingDate.isBefore(now))
                discount = 50;
        %>
        <%=discount%>
    </p>
</div>

    <a style="margin: 4rem; margin-top: 0" role="button"  class="btn btn-outline-primary me-2" href="buyticket?tk=<%=ticket.getId()%>">
        buy
    </a>
<%
    String lable;
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
