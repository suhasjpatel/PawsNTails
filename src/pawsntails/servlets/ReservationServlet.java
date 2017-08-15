package pawsntails.servlets;

import pawsntails.models.Account;
import pawsntails.shared.ReservationBean;
import pawsntails.shared.Strings;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class ReservationServlet extends HttpServlet {
	private HttpSession session;
	private StringBuilder errorMessage;
	private ArrayList<ReservationBean> reservations;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		session = req.getSession();
		errorMessage = new StringBuilder();
		Account account = (Account) session.getAttribute(Strings.ACCOUNT);
		if (account == null) {
			resp.sendRedirect(Strings.LOGIN);
		}

		session = req.getSession();
		String formParam = "";

		formParam = req.getParameter("formName");

		if (formParam != null) {

			switch (formParam) {
			case "breeds":
				set_breeds(req, resp);
				break;
			case "rooms":
				set_rooms(req, resp);
				break;
			case "activities":
				set_activities(req, resp);
				break;
			default:
				System.out.println("error occured formParam is:" + formParam);
			}
		}
		else {
			RequestDispatcher rd = req.getRequestDispatcher(Strings.RESERVATION);
			try {
				rd.forward(req, resp);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	private void set_breeds(HttpServletRequest request, HttpServletResponse response) {
		if (session.getAttribute("reservations")== null)
		{
			reservations = new ArrayList<ReservationBean>();
		}
		else
		{
			reservations = (ArrayList<ReservationBean>) session.getAttribute("reservations");
		}
		 
		if (request.getParameter(Strings.DOG) != null) {
			ReservationBean reservationDog = new ReservationBean();
			reservationDog.setAnimal(Strings.DOG);
			
			String toDateString = request.getParameter("toDate");			
			String fromDateString = request.getParameter("fromDate");
			try {
				Date toDate=new SimpleDateFormat("dd/MM/yyyy").parse(toDateString);
				reservationDog.setToDate(toDate);
			} catch (ParseException e) {
				errorMessage.append("Date must be in dd/MM/yyyy format");
			}
			try {
				Date fromDate=new SimpleDateFormat("dd/MM/yyyy").parse(fromDateString);
				reservationDog.setFromDate(fromDate);
			} catch (ParseException e) {
				errorMessage.append("Date must be in dd/MM/yyyy format");
			}			
			reservations.add(reservationDog);
		}

		if (request.getParameter(Strings.CAT) != null) {
			ReservationBean reservationCat = new ReservationBean();
			reservationCat.setAnimal(Strings.CAT);
			
			String toDateString = request.getParameter("toDate");			
			String fromDateString = request.getParameter("fromDate");
			try {
				Date toDate=new SimpleDateFormat("dd/MM/yyyy").parse(toDateString);
				reservationCat.setToDate(toDate);
			} catch (ParseException e) {
				errorMessage.append("Date must be in dd/MM/yyyy format");
			}
			try {
				Date fromDate=new SimpleDateFormat("dd/MM/yyyy").parse(fromDateString);
				reservationCat.setFromDate(fromDate);
			} catch (ParseException e) {
				errorMessage.append("Date must be in dd/MM/yyyy format");
			}	
			
			reservations.add(reservationCat);
		}

		if (request.getParameter(Strings.OTHER) != null) {
			ReservationBean reservationOther = new ReservationBean();
			reservationOther.setAnimal(Strings.OTHER);
			
			String toDateString = request.getParameter("toDate");			
			String fromDateString = request.getParameter("fromDate");
			try {
				Date toDate=new SimpleDateFormat("dd/MM/yyyy").parse(toDateString);
				reservationOther.setToDate(toDate);
			} catch (ParseException e) {
				errorMessage.append("Date must be in dd/MM/yyyy format");
			}
			try {
				Date fromDate=new SimpleDateFormat("dd/MM/yyyy").parse(fromDateString);
				reservationOther.setFromDate(fromDate);
			} catch (ParseException e) {
				errorMessage.append("Date must be in dd/MM/yyyy format");
			}	
			
			reservations.add(reservationOther);
		}

		session.setAttribute("reservations", reservations);
		System.out.println("here i am!");
		RequestDispatcher rd = request.getRequestDispatcher("/hotelRooms.jsp");
		try {
			rd.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private void set_rooms(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<ReservationBean> reservations = (ArrayList<ReservationBean>) session.getAttribute("reservations");
		if (reservations == null) {
			RequestDispatcher rd = request.getRequestDispatcher(Strings.RESERVATION);
			try {
				rd.forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		for (int i = 0; i < reservations.size(); i++) {
			
			if (reservations.get(i).getAnimal().equals(Strings.DOG)) {
				if (request.getParameter("dog_rooms") != null) {
					reservations.get(i).setRoom(request.getParameter("dog_rooms"));
				}
			}

			if (reservations.get(i).getAnimal().equals(Strings.CAT)) {
				if (request.getParameter("cat_rooms") != null) {
					reservations.get(i).setRoom(request.getParameter("cat_rooms"));
				}
			}

			if (reservations.get(i).getAnimal().equals(Strings.OTHER)) {
				if (request.getParameter("other_rooms") != null) {
					reservations.get(i).setRoom(request.getParameter("other_rooms"));
				}
			}
			System.out.println(reservations.get(i).toString());
		}

		session.setAttribute("reservations", reservations);
		RequestDispatcher rd = request.getRequestDispatcher("/activities.jsp");
		try {
			rd.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void set_activities(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<ReservationBean> reservations = (ArrayList<ReservationBean>) session.getAttribute("reservations");
		if (reservations == null) {
			RequestDispatcher rd = request.getRequestDispatcher(Strings.RESERVATION);
			try {
				rd.forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		for (int i = 0; i < reservations.size(); i++) {
			
			if (reservations.get(i).getAnimal().equals(Strings.DOG)) {
				if (request.getParameterValues("dog_activies") != null) {
					reservations.get(i).setActivities(request.getParameterValues("dog_activies"));
				}
			}

			if (reservations.get(i).getAnimal().equals(Strings.CAT)) {
				if (request.getParameterValues("cat_activities") != null) {
					reservations.get(i).setActivities(request.getParameterValues("cat_activities"));
				}
			}

			if (reservations.get(i).getAnimal().equals(Strings.OTHER)) {
				if (request.getParameter("other_activities") != null) {
					reservations.get(i).setActivities(request.getParameterValues("other_activities"));
				}
			}
			System.out.println(reservations.get(i).toString());
		}

		session.setAttribute("reservations", reservations);
		RequestDispatcher rd = request.getRequestDispatcher(Strings.RESERVATIONCOMPLETE);
		try {
			rd.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
