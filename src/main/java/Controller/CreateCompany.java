package Controller;

import Domain.Company;
import Domain.Ticket;
import Util.Context;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import static Util.Context.getModeratorService;

@WebServlet("/create-company")
public class CreateCompany extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//
        String brand = req.getParameter("brand");



        try {

            Company company = new Company(brand);

            boolean result = getModeratorService().registerCompany(company);
            if (!result) throw new Exception("companies must have unique name");
            req.setAttribute("sc", "successfully created " + company.getBrandName() + " company for you");
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("create-company.jsp");
            requestDispatcher.forward(req, resp);
        } catch (Exception e) {
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("create-company.jsp");
            req.setAttribute("er",e.getMessage() + " : "+e.getClass().getSimpleName() );
            requestDispatcher.forward(req, resp);
        }


    }
}
