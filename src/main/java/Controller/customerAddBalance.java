package Controller;

import Util.Context;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static Util.Context.*;

@WebServlet("/addbalance")
public class customerAddBalance extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String am = req.getParameter("am");
        int im=0;
        try {
             im = Integer.parseInt(am);
        } catch (Exception e) {
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("addbalance.jsp");
            req.setAttribute("er","enter valid numbers not floating point \n" +
                    "or other text values ");
            requestDispatcher.forward(req, resp);
        }
        boolean res = getCustomerService().addBalance(im);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("addbalance.jsp");
        if (res) {
            req.setAttribute("sc","successfully added the balance your current balance is  "+ getCurrentCustomer().getBalance());
        }else {
            req.setAttribute("er","enter valid numbers not floating point \n" +
                    "or other text values ");
        }
        requestDispatcher.forward(req, resp);

    }
}
