package pawsntails.servlets;

import pawsntails.models.Account;
import pawsntails.models.ReservationsBean;
import pawsntails.shared.Strings;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Servlet to handle processing after checking out a cart.
 */
public class CheckoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        StringBuilder errorMessage = new StringBuilder();
        Account account = (Account) session.getAttribute(Strings.ACCOUNT);
        ReservationsBean reservations = (ReservationsBean) session.getAttribute("reservations");
        RequestDispatcher checkout = req.getRequestDispatcher(Strings.CHECKOUT);

        //TODO: Send Email. And other things.
        //sendEmail(account.getEmail(), reservations);

        checkout.forward(req, resp);
    }
}
