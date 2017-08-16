package pawsntails.servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pawsntails.models.Account;
import pawsntails.shared.Strings;

import java.io.IOException;

public class RegisterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
        
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	StringBuilder errorMessage = new StringBuilder();
        HttpSession session = req.getSession();
        String firstName = req.getParameter(Strings.FIRSTNAME);
        String lastName = req.getParameter(Strings.LASTNAME);
        String email = req.getParameter(Strings.EMAIL);
        String password = req.getParameter(Strings.PASSWORD);
        String address1 = req.getParameter(Strings.ADDRESS1);
        String address2 = req.getParameter(Strings.ADDRESS2);
        String city = req.getParameter("city");
        String state = req.getParameter("state");
        String zipcode = req.getParameter("zipcode");
        
        //TODO ADD VALIDATION
        
        RequestDispatcher register = req.getRequestDispatcher(Strings.LOGIN);
        if (errorMessage.toString().isEmpty()) {
            Account account = new Account(email, password, firstName, lastName, address1, address2, city, state, zipcode);
            session.setAttribute(Strings.ACCOUNT, account);
            resp.sendRedirect(Strings.MYACCOUNT);
        }
    	else {
    	req.setAttribute("errorMessageRegister", errorMessage);
    	register.forward(req, resp);
    }
    }
}
