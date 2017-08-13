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
        
        String email = req.getParameter(Strings.EMAIL);
        String password = req.getParameter(Strings.PASSWORD);
        String address1 = req.getParameter("address");
        String address2 = req.getParameter("address2");
        String city = req.getParameter("city");
        String state = req.getParameter("state");
        String zipcode = req.getParameter("zipcode");
        
        RequestDispatcher register = req.getRequestDispatcher(Strings.MYACCOUNT);
        if (errorMessage.toString().isEmpty()) {
            Account account = new Account(email, password);
            session.setAttribute(Strings.ACCOUNT, account);
        	register.forward(req, resp);
        }
    }
}
