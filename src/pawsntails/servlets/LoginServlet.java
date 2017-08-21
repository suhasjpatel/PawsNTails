package pawsntails.servlets;

import pawsntails.dao.PawsNTailsDAO;
import pawsntails.models.Account;
import pawsntails.shared.Strings;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Servlet to handle logging in to the web application.
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StringBuilder errorMessage = new StringBuilder();
        HttpSession session = req.getSession();

        RequestDispatcher login = req.getRequestDispatcher(Strings.LOGIN);

        String email = req.getParameter(Strings.EMAIL);
        String password = req.getParameter(Strings.PASSWORD);

        if (email.isEmpty()) {
            errorMessage.append("Please make sure to enter the email address tied to your account. <br />");
        } else if (email.length() > Strings.STRING_LEN) {
            errorMessage.append("Please make sure your email address is under " + Strings.STRING_LEN + " characters.  <br />");
        }

        if (password.isEmpty()) {
            errorMessage.append("Please include the password to your account.  <br />");
        } else if (password.length() > Strings.STRING_LEN) {
            errorMessage.append("Please make sure your password is under " + Strings.STRING_LEN + " characters.  <br />");
        }

        Account account = new Account(email, password);
        PawsNTailsDAO dao = new PawsNTailsDAO();
        account = dao.findUser(account);
        if (account == null) {
            account = new Account(email, password);
            errorMessage.append("The username and password combination was not found. Please try again.  <br />");
        }

        if (errorMessage.toString().isEmpty()) {
            session.setAttribute(Strings.ACCOUNT, account);
            resp.sendRedirect(Strings.INDEX);
        } else {
            req.setAttribute("errorMessageLogin", errorMessage);
            req.setAttribute("login", account);
            login.forward(req, resp);
        }
    }
}
