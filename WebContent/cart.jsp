<%@ page import="pawsntails.shared.Strings"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<jsp:include page="<%=Strings.HEADER%>" />
<body>
	<jsp:include page="<%=Strings.MENU%>" />
	<%@	page import="pawsntails.shared.ReservationBean"%>
	<%@	page import="java.util.*"%>
	<%@	page import="java.text.SimpleDateFormat"%>
	<div class="container">
		<center>
			<h1>Thank you picking us to book your beloved pet overnight!</h1>
			<%
				if (session.getAttribute("reservations") != null) {
			%>
			<h3>Below is a review of your booking. It will be added to your
				cart for checkout.</h3>

			<br>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Date</th>
						<th>Breed</th>
						<th>Room Type</th>
						<th>Activities</th>
						<th>Edit</th>
				</thead>
				<tbody>

					<%
						ArrayList<ReservationBean> reservations = (ArrayList<ReservationBean>) session
									.getAttribute("reservations");
							for (int i = 0; i < reservations.size(); i++) {
								ReservationBean reservation = reservations.get(i);
								SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");

								//TODO need to add an edit page 
								//form doesn't work right now
					%>
					<form>
						<tr>
							<td><%=reservation.datePretty(reservation.getFromDate())%> -
								<%=reservation.datePretty(reservation.getToDate())%></td>
							<td><%=reservation.getAnimal()%></td>
							<td><%=reservation.getRoom()%></td>
							<td><%=Arrays.toString(reservation.getActivities())%></td>
							<td><input type="button" value="Edit"></input></td>
						</tr>
					</form>
					<%
						}
					%>
				</tbody>
			</table>
			<form action="<%=Strings.CHECKOUT_SERV%>">
				<input type="submit" value="Checkout">
			</form>
			<form action="<%=Strings.RESERVATION_SERV%>">
				<input type="submit" value="Make another reservation">
			</form>
			<%
				} else {
			%>

			<h3>It looks like you have yet to make a reservation.</h3>
			<form action="<%=Strings.RESERVATION_SERV%>">
				<input type="submit" value="Make a Reservation">
			</form>
			<%
				}
			%>
		</center>

	</div>


</body>
</html>
