package Controller;

import Domain.Moderator;
import Domain.enums.Roles;
import Services.Apis.ModeratorServiceApi;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static Util.Context.getModeratorService;

@WebServlet("/reg-mod")
public class ModeratorRegister extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String password = req.getParameter("password");
        String username = req.getParameter("username");
        String firstName = req.getParameter("fn");
        String lastName = req.getParameter("ln");
        Moderator moderator = null;
        try {

            moderator = new Moderator(
                    firstName, lastName, username, password, Roles.highAuthority
            );
            ModeratorServiceApi moderatorService = getModeratorService();
            boolean result = moderatorService.registerModerator(moderator);
            if (!result) throw new Exception("user name must be unique");
            System.out.println("a mod signed up >>>> " + result);
            RequestDispatcher rd = req.getRequestDispatcher("moderator-signup.jsp");
            req.setAttribute("sc", "successfully created a moderator " + moderator.getFirstName() + " " + moderator.getLastName()+" now " +
                    "you can login");
            rd.forward(req, resp);


        } catch (Exception e) {
            RequestDispatcher rd = req.getRequestDispatcher("signup-fail.jsp");
            req.setAttribute("e", "something went wrong "+e.getMessage()+" : "+e.getClass().getSimpleName());
            rd.forward(req, resp);
        }


    }
}
