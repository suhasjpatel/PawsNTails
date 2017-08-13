package pawsntails.servlets;

import pawsntails.models.Account;
import pawsntails.shared.Strings;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher login = req.getRequestDispatcher(Strings.LOGIN);
        StringBuilder errorMessage = new StringBuilder();

        HttpSession session = req.getSession();

        String email = req.getParameter(Strings.EMAIL);
        String password = req.getParameter(Strings.PASSWORD);

        //Validate input fields

        if (email.isEmpty()) {
            errorMessage.append("Please make sure to enter the email address tied to your account");
        }

        if (password.isEmpty()) {
            errorMessage.append("Please include the password to your account");
        }

        //Check against DB
        //Get full account from DB

        if (errorMessage.toString().isEmpty()) {
            Account account = new Account(email, password);
            session.setAttribute(Strings.ACCOUNT, account);
            resp.sendRedirect(Strings.INDEX);
        } else {
        	req.setAttribute("errorMessageLogin", errorMessage);
            login.forward(req, resp);
        }
    }
}
