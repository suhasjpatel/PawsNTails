package pawsntails.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pawsntails.models.Account;
import pawsntails.shared.ReservationBean;
import pawsntails.shared.Strings;

import java.io.IOException;
import java.util.ArrayList;

public class CheckoutServlet extends HttpServlet {
	private HttpSession session;
	private StringBuilder errorMessage;
	private ArrayList<ReservationBean> reservations;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	session = req.getSession();
		errorMessage = new StringBuilder();
		Account account = (Account) session.getAttribute(Strings.ACCOUNT);
		ArrayList<ReservationBean> reservations = (ArrayList<ReservationBean>) session.getAttribute("reservations");
		if (account == null) {
			//AN ERROR OCCURED HERE
			System.out.println("error!! account is null");
		}
		
		sendEmail(account.getEmail(), reservations);
    }
    
    private void sendEmail(String email, ArrayList<ReservationBean> reservations)
    {
    	//TODO send the email
    }
}
