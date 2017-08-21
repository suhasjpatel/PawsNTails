package pawsntails.models;

import java.util.Arrays;
import java.util.Date;

/**
 * Bean containing information about a a single reservation
 */
public class ReservationBean {

    private String room;
    private String[] activities;
    private String animal;
    private Date toDate;
    private Date fromDate;

    public ReservationBean() {

    }

    public String getAnimal() {
        return animal;
    }

    public void setAnimal(String animal) {
        this.animal = animal;
    }

    public Date getToDate() {
        return toDate;
    }

    public void setToDate(Date toDate) {
        this.toDate = toDate;
    }

    public Date getFromDate() {
        return fromDate;
    }

    public void setFromDate(Date fromDate) {
        this.fromDate = fromDate;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }

    public String getActivities() {
        if (activities != null) {
            return String.join(", ", activities);
        }
        return "";
    }

    public void setActivities(String[] activities) {
        this.activities = activities;
    }

    @Override
    public String toString() {
        return "ReservationBean [room=" + room + ", activities=" + Arrays.toString(activities) + ", animal=" + animal
                + ", fromDate=" + fromDate + ", toDate=" + toDate + "]";
    }
}
