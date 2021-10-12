
<%@ page contentType="text/html;charset=UTF-8"  %>

<div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
        <a href="index.jsp" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
            <img
                    src="https://s4.uupload.ir/files/2982657_zhpd.png"
                    alt="plane-image"
                    width="100"
                    height="100"
                    style="transform: rotate(45deg)"
            />
        </a>
        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
            <li><a href="index.jsp" class="nav-link px-2 link-secondary">Home</a></li>
            <li><a href="customer-dashboard.jsp" class="nav-link px-2 link-dark">dashboard</a></li>
            <li><a href="#" class="nav-link px-2 link-dark">Pricing</a></li>
            <li><a href="#" class="nav-link px-2 link-dark">FAQs</a></li>
            <li><a href="#" class="nav-link px-2 link-dark">About</a></li>
        </ul>
<%
    String lable = "login";
    String action="login.jsp";
    if(session.getAttribute("currentCustomer")!=null){
        lable = "logout";
        action = "customerlogout";
    }
%>
        <div class="col-md-3 text-end">
            <!-- button link -->
            <a role="button"
               class="btn btn-outline-primary me-2"
               href="<%=action%>"
            ><%=lable%></a>
            <a role="button" class="btn btn-primary" href="signup.jsp">Sign-up</a>
            <!-- button link -->
        </div>
    </header>
</div>
