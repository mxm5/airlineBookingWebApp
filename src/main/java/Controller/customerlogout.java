package Controller;

import Util.Context;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.net.http.HttpRequest;
@WebServlet("/customerlogout")
public class customerlogout extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        session.removeAttribute("currentCustomer");
        Context.setCurrentCustomer(null);
        session.invalidate();
        resp.sendRedirect("index.jsp");
    }
}
