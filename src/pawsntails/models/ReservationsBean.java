package pawsntails.models;

import java.util.ArrayList;

/**
 * Bean containing a list of multiple reservations (each represented by a ReservationsBean)
 */
public class ReservationsBean {

    private ArrayList<ReservationBean> reservations;

    public ReservationsBean() {
        this.reservations = new ArrayList<>();
    }

    public ArrayList<ReservationBean> getReservations() {
        return reservations;
    }

}
