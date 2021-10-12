package Controller;

import Domain.Ticket;
import Repositories.Impls.TicketRepository;
import Util.Context;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Optional;

import static Util.Context.*;

@WebServlet("/buyticket")
public class BuyTicket extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String tk = req.getParameter("tk");
        try {
            Long ticketId = Long.parseLong(tk);
            TicketRepository ticketRepository = new TicketRepository();
            Optional<Ticket> ticketOptional = ticketRepository.getById(ticketId);
            Ticket ticket = ticketOptional.orElse(null);
            if (ticket == null) throw new Exception("no tickets found");
            getCustomerService().buyTicket(ticket);
            RequestDispatcher rd = req.getRequestDispatcher("buy.jsp");
            req.setAttribute("sc","buying ticket successful");
            rd.forward(req,resp);
        } catch (Exception e) {
            RequestDispatcher rd = req.getRequestDispatcher("buy.jsp");
            req.setAttribute("er",e.getClass().getSimpleName()+" : "+e.getMessage());
            rd.forward(req,resp);
        }
    }
}
