package Controller;

import Util.Context;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static Util.Context.*;

@WebServlet("/mod-logout")
public class ModeratorLogout extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        session.removeAttribute("currentModerator");
        setCurrentModerator(null);
        session.invalidate();
        resp.sendRedirect("moderator-login.jsp");
    }
}
