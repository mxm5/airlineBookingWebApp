<%@ page import="Domain.Ticket" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="Util.Context" %>
<%@ page import="static Util.Context.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create tickets</title>
    <jsp:include page="bootstrap/css.jsp"/>
</head>
<body>
<%
    response.setHeader("Cache-Control", "no-cache ,no-store ,must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
    if (session.getAttribute("currentModerator") == null || getCurrentModerator()==null) {
        response.sendRedirect("moderator-login.jsp");
    }
%>
<jsp:include page="components/spacer.jsp"/>
<div class="all-classes-container" style="text-align: center">
    <h3>
        create tickets
    </h3>
</div>
<br>
<br>
<form class="container" action="create-tickets" method="get">
    <div class="form-group">
        <label for="amount">enter the amount you want to add to your balance</label>
        <br/>
        <input
                type="number"
                class="form-control p"
                size="55"
                id="amount"
                aria-describedby="emailHelp"
                placeholder="Enter amount of tickets"
                name="am"
        />
        <%
            String str = "2016-03-04 11:30";
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
            LocalDateTime dateTime = LocalDateTime.parse(str, formatter);

//            Read more: https://www.java67.com/2016/04/how-to-convert-string-to-localdatetime-in-java8-example.html#ixzz795FY1OgR
//            new Ticket(md,ad,pri,co,frm,to)
        %>
      <br>
            <label for="md">moving date</label>
            <br/>
            <input
                    type="datetime-local"
                    name="md"
                    class="form-control p"
                    size="20"
                    id="md"
                    aria-describedby="emailHelp"
                    placeholder="set a moving date"

            />
        <br>
        <label for="ad">arriving date</label>
        <br/>
        <input
                type="datetime-local"
                name="ad"
                class="form-control p"
                size="20"
                id="ad"
                aria-describedby="emailHelp"
                placeholder="set an arriving date"

        />
        <br/>
        <label for="pri">enter the price</label>
        <br/>
        <input
                type="number"
                class="form-control p"
                size="55"
                id="pri"
                aria-describedby="emailHelp"
                placeholder="Enter an integer price "
                name="pri"
        />
        <br>
        <label for="frm">from</label>
        <br/>
        <input
                type="text"
                class="form-control p"
                size="55"
                id="frm"
                aria-describedby="emailHelp"
                placeholder="Enter a city name "
                name="frm"
        />
        <br>
        <label for="to">to</label>
        <br/>
        <input
                type="text"
                class="form-control p"
                size="55"
                id="to"
                aria-describedby="emailHelp"
                placeholder="Enter a city name "
                name="to"
        />
        <br>

    </div>


    <button type="submit" class="btn btn-success p">Submit</button>
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
