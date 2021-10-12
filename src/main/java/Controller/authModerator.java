package Controller;

import Domain.Customer;
import Domain.Moderator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static Util.Context.*;

@WebServlet("/auth-mod")
public class authModerator extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String password = req.getParameter("password");
        String username = req.getParameter("username");
        Moderator moderator = getModeratorService().loginModerator(username, password);
        if (moderator != null) {
            System.out.println("a user logged in ");
            HttpSession session = req.getSession();
            session.setAttribute("currentModerator",moderator);
            setCurrentModerator(moderator);
            RequestDispatcher rd = req.getRequestDispatcher("moderator-login-success.jsp");
            rd.forward(req,resp);
        }
        else {
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("moderator-login-fail.jsp");
            requestDispatcher.forward(req,resp);
        }


    }
}
