package Controller;

import Domain.Customer;
import Repositories.Impls.CustomerRepository;
import Services.Impls.CustomerService;
import Util.Context;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static Util.Context.*;

@WebServlet("/auth-user")
public class authCustomer extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String password = req.getParameter("password");
        String username = req.getParameter("username");
        Customer customer = getCustomerService().loginCustomer(username, password);
        if (customer != null) {
            System.out.println("a user logged in ");
            HttpSession session = req.getSession();
            session.setAttribute("currentCustomer",customer);
            setCurrentCustomer(customer);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("login-success.jsp");
            requestDispatcher.forward(req,resp);

        }
        else {
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("login-fail.jsp");
            requestDispatcher.forward(req,resp);
        }


    }
}
