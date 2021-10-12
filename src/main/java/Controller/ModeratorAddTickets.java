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

import static Util.Context.*;

@WebServlet("/create-tickets")
public class ModeratorAddTickets extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        new Ticket(md,ad,pri,co,frm,to) am
        String am = req.getParameter("am");
        String md = req.getParameter("md");
        String ad = req.getParameter("ad");
        String pri = req.getParameter("pri");
        String frm = req.getParameter("frm");
        String to = req.getParameter("to");


        try {
            int amount = Integer.parseInt(am);
            int price = Integer.parseInt(pri);
            md = md.replace("T", " ");
            ad = ad.replace("T", " ");
//            String str = "2016-03-04 11:30";
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
            LocalDateTime moveDate = LocalDateTime.parse(md, formatter);
            LocalDateTime arriveDate = LocalDateTime.parse(ad, formatter);
            Company company = Context.getCurrentModerator().getCompany();
            if(company== null) throw new Exception("no company registered for moderator");
            if(frm== null|| frm.equals("")) throw new Exception("from cant be empty");
            if(to== null|| to.equals("")) throw new Exception("to cant be empty");
            Ticket ticket = new Ticket(moveDate, arriveDate, price, company, frm, to);
            getModeratorService().createATripWithTickets(ticket,amount);
            req.setAttribute("sc","successfully created "+amount+" tickets for "+frm+" "+" to "+to);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("add-tickets.jsp");
            requestDispatcher.forward(req, resp);
        } catch (Exception e) {
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("add-tickets.jsp");
            req.setAttribute("er",e.getMessage() + " : "+e.getClass().getSimpleName() );
            requestDispatcher.forward(req, resp);
        }


    }
}
