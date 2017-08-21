package pawsntails.servlets;

import pawsntails.models.Account;
import pawsntails.models.ReservationBean;
import pawsntails.models.ReservationsBean;
import pawsntails.shared.Strings;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Servlet to handle the steps in creating a reservation.
 */
public class ReservationServlet extends HttpServlet {
    private HttpSession session;
    private StringBuilder errorMessage;
    private ReservationsBean reservations;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        session = req.getSession();
        errorMessage = new StringBuilder();
        Account account = (Account) session.getAttribute(Strings.ACCOUNT);
        String formParam = req.getParameter("formName");

        if (account.getEmail() == null) {
            resp.sendRedirect(Strings.LOGIN);
        } else if (formParam != null) {
            switch (formParam) {
                case "breeds":
                    setBreeds(req, resp);
                    break;
                case "rooms":
                    setRooms(req, resp);
                    break;
                case "activities":
                    setActivities(req, resp);
                    break;
                default:
                    System.err.println("error occurred formParam is:" + formParam);
            }
        } else {
            RequestDispatcher rd = req.getRequestDispatcher(Strings.RESERVATION);
            rd.forward(req, resp);
        }
    }

    private void setBreeds(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        reservations = (ReservationsBean) session.getAttribute("new_reservations");
        String[] pets = request.getParameterValues("pets");
        String toDateString = request.getParameter("toDate");
        String fromDateString = request.getParameter("fromDate");
        Date toDate = null;
        Date fromDate = null;

        if (toDateString.isEmpty()) {
            errorMessage.append("Please enter a date for beginning your pet's stay  <br />");
        }

        if (fromDateString.isEmpty()) {
            errorMessage.append("Please enter a date for ending your pet's stay  <br />");
        }

        if (!toDateString.isEmpty() && !fromDateString.isEmpty()) {
            try {
                toDate = new SimpleDateFormat("MM/dd/yyyy").parse(toDateString);
            } catch (ParseException e) {
                errorMessage.append("Begin date must be in MM/dd/yyyy format. <br />");
            }

            try {
                fromDate = new SimpleDateFormat("MM/dd/yyyy").parse(fromDateString);
            } catch (ParseException e) {
                errorMessage.append("End date must be in MM/dd/yyyy format. <br />");
            }
        }

        if (fromDate != null && toDate != null && fromDate.compareTo(toDate) >= 0) {
            errorMessage.append("Begin stay date must be after end stay date and the minimum booking duration is 1 day. <br />");
        } else {
            if (pets == null) {
                errorMessage.append("Please select at least one pet for your reservation. <br />");
            } else {
                for (String pet : pets) {
                    if (pet.equals(Strings.CAT) || pet.equals(Strings.DOG) || pet.equals(Strings.OTHER)) {
                        ReservationBean reservation = new ReservationBean();
                        reservation.setAnimal(pet);
                        reservation.setToDate(toDate);
                        reservation.setFromDate(fromDate);
                        reservations.getReservations().add(reservation);
                    } else {
                        errorMessage.append("An invalid pet was selected. Please try again.  <br />");
                    }
                }
            }
        }

        if (errorMessage.toString().isEmpty()) {
            session.setAttribute("new_reservations", reservations);
            RequestDispatcher rd = request.getRequestDispatcher(Strings.HOTELROOMS);
            rd.forward(request, response);
        } else {
            RequestDispatcher rd = request.getRequestDispatcher(Strings.RESERVATION);
            request.setAttribute("errorMessageReservation", errorMessage);
            rd.forward(request, response);
        }
    }

    private void setRooms(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        reservations = (ReservationsBean) session.getAttribute("new_reservations");

        for (ReservationBean reservation : reservations.getReservations()) {
            switch (reservation.getAnimal()) {
                case Strings.DOG:
                    if (request.getParameter("dog_rooms") != null) {
                        reservation.setRoom(request.getParameter("dog_rooms"));
                    } else {
                        errorMessage.append("Please select a dog room and try again.  <br />");
                    }
                    break;
                case Strings.CAT:
                    if (request.getParameter("cat_rooms") != null) {
                        reservation.setRoom(request.getParameter("cat_rooms"));
                    } else {
                        errorMessage.append("Please select a cat room and try again.  <br />");
                    }
                    break;
                case Strings.OTHER:
                    if (request.getParameter("other_rooms") != null) {
                        reservation.setRoom(request.getParameter("other_rooms"));
                    } else {
                        errorMessage.append("Please select an other pet room and try again.  <br />");
                    }
                    break;
                default:
                    System.err.println("Default case in select room hit. Should never hit here.");
                    break;
            }
            reservations.getReservations().set(reservations.getReservations().indexOf(reservation), reservation);
        }

        if (errorMessage.toString().isEmpty()) {
            session.setAttribute("new_reservations", reservations);
            RequestDispatcher rd = request.getRequestDispatcher(Strings.ACTIVITIES);
            rd.forward(request, response);
        } else {
            RequestDispatcher rd = request.getRequestDispatcher(Strings.RESERVATION);
            request.setAttribute("errorMessageReservation", errorMessage);
            rd.forward(request, response);
        }
    }

    private void setActivities(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        reservations = (ReservationsBean) session.getAttribute("new_reservations");
        for (ReservationBean reservation : reservations.getReservations()) {
            switch (reservation.getAnimal()) {
                case Strings.DOG:
                    if (request.getParameterValues("dog_activities") != null) {
                        reservation.setActivities(request.getParameterValues("dog_activities"));
                    }
                    break;
                case Strings.CAT:
                    if (request.getParameterValues("cat_activities") != null) {
                        reservation.setActivities(request.getParameterValues("cat_activities"));
                    }
                    break;
                case Strings.OTHER:
                    if (request.getParameter("other_activities") != null) {
                        reservation.setActivities(request.getParameterValues("other_activities"));
                    }
                    break;
                default:
                    System.err.println("Default case in select activity hit. Should never hit here.");
                    break;
            }
            reservations.getReservations().set(reservations.getReservations().indexOf(reservation), reservation);
        }

        if (errorMessage.toString().isEmpty()) {
            ReservationsBean allReservations = (ReservationsBean) session.getAttribute("reservations");
            allReservations.getReservations().addAll(reservations.getReservations());
            session.setAttribute("reservations", allReservations);
            RequestDispatcher rd = request.getRequestDispatcher(Strings.RESERVATIONCOMPLETE);
            rd.forward(request, response);
        } else {
            RequestDispatcher rd = request.getRequestDispatcher(Strings.RESERVATION);
            request.setAttribute("errorMessageReservation", errorMessage);
            rd.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
