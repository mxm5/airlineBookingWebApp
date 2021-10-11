package Controller;

import Domain.Customer;
import Services.Apis.CustomerServiceApi;
import Services.Impls.CustomerService;
import Util.Context;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static Util.Context.getCustomerService;
@WebServlet("/reg-user")
public class CustomerRegister extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String password = req.getParameter("password");
        String username = req.getParameter("username");
        String firstName = req.getParameter("fn");
        String lastName = req.getParameter("ln");
        CustomerServiceApi customerService = getCustomerService();
        Customer customer=null;
        try {

            customer = new Customer(
                    firstName, lastName, username, password
            );
        } catch (Exception e) {
            RequestDispatcher rd = req.getRequestDispatcher("signup-fail.jsp");
            req.setAttribute("e","something went wrong");
            rd.forward(req, resp);
        }
        if (customer !=null) {
            boolean result = customerService.registerCustomer(customer);
            System.out.println("a usr signed up >>>> " + result);
            if (result) {
                RequestDispatcher rd = req.getRequestDispatcher("signup-success.jsp");
                rd.forward(req, resp);
            } else {
                RequestDispatcher rd = req.getRequestDispatcher("signup-fail.jsp");
                req.setAttribute("e", "something went wrong");
                rd.forward(req, resp);

            }
        }
    }
}
