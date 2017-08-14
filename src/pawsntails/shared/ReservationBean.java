package pawsntails.shared;

import java.util.Arrays;

public class ReservationBean {
	
	private String room;
	private String[] activities;
	private String animal;
	
	public ReservationBean()
	{
		
	}
	
	public String getAnimal() {
		return animal;
	}

	@Override
	public String toString() {
		return "ReservationBean [room=" + room + ", activities=" + Arrays.toString(activities) + ", animal=" + animal
				+ "]";
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
