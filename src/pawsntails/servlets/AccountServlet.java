package pawsntails.servlets;

import pawsntails.dao.PawsNTailsDAO;
import pawsntails.models.Account;
import pawsntails.shared.AccountValidator;
import pawsntails.shared.Strings;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Servlet to edit the account of a user after it has been created.
 */
public class AccountServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String firstName = req.getParameter(Strings.FIRSTNAME);
        String lastName = req.getParameter(Strings.LASTNAME);
        String email = req.getParameter(Strings.EMAIL);
        String password = req.getParameter(Strings.PASSWORD);
        String address1 = req.getParameter(Strings.ADDRESS1);
        String address2 = req.getParameter(Strings.ADDRESS2);
        String city = req.getParameter(Strings.CITY);
        String state = req.getParameter(Strings.STATE);
        String zipcode = req.getParameter(Strings.ZIP);
        PawsNTailsDAO dao = new PawsNTailsDAO();

        StringBuilder errorMessage = AccountValidator.validate(firstName, lastName, email, password,
                address1, address2, city, state, zipcode);

        RequestDispatcher register = req.getRequestDispatcher(Strings.REGISTER);
        if (errorMessage.toString().isEmpty()) {
            Account account = new Account(email, password, firstName, lastName, address1, address2, city, state, zipcode);
            session.setAttribute(Strings.ACCOUNT, account);
            dao.update(account);
            resp.sendRedirect(Strings.MYACCOUNT);
        } else {
            req.setAttribute(Strings.ERROR, errorMessage);
            register.forward(req, resp);
        }
    }
}
