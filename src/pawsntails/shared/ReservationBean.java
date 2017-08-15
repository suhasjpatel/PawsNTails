package pawsntails.shared;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;

public class ReservationBean {
	
	private String room;
	private String[] activities;
	private String animal;
	private Date toDate;
	private Date fromDate;
	
	public ReservationBean()
	{
		
	}
	
	public String getAnimal() {
		return animal;
	}



	@Override
	public String toString() {
		return "ReservationBean [room=" + room + ", activities=" + Arrays.toString(activities) + ", animal=" + animal
				+ ", fromDate=" + fromDate + ", toDate=" + toDate +  "]";
	}

	public Date getToDate() {
		return toDate;
	}
	
	public String datePretty(Date date)
	{
		SimpleDateFormat format1 = new SimpleDateFormat("dd/MM/yyyy");
		return format1.format(date);
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

	public void setAnimal(String animal) {
		this.animal = animal;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public String[] getActivities() {
		return activities;
	}
	public void setActivities(String[] activities) {
		this.activities = activities;
	}
}
