package pawsntails.servlets;

import pawsntails.models.Account;
import pawsntails.shared.Strings;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class ReservationServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Account account = (Account) session.getAttribute(Strings.ACCOUNT);
        if (account == null) {
            resp.sendRedirect(Strings.LOGIN);
        } else {
            resp.sendRedirect(Strings.RESERVATION);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect(Strings.RESERVATIONCOMPLETE);
    }
}
