<%@ page import="pawsntails.shared.Strings"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<jsp:include page="<%=Strings.HEADER%>" />
<body>
	<jsp:include page="<%=Strings.MENU%>" />
	<%@	page import="pawsntails.shared.ReservationBean"%>
	<%@	page import="java.util.*"%>
	<div class="container">
		<center>
			<h1>Thank you picking us to book your beloved pet overnight!</h1>
			<h3>Below is a review of your booking. It will be added to your cart for checkout.</h3>
			
			<br>
			<table class="table table-striped">
			<thead>
			<tr>
			<th>Breed</th>
			<th>Room Type</th>
			<th>Activities</th>
			</thead>
			<tbody>

			<% ArrayList<ReservationBean> reservations = (ArrayList<ReservationBean>)session.getAttribute("reservations"); 
				for (int i = 0; i < reservations.size(); i++) {
					ReservationBean reservation = reservations.get(i);
			%>
			<tr>
			<td> <%=reservation.getAnimal() %></td>
			<td> <%=reservation.getRoom()%></td>
			<td> <%=Arrays.toString(reservation.getActivities()) %></td>
			</tr>
			
			<%}%>
			</tbody>	
			</table>

		</center>
	</div>
	<form action="<%=Strings.CART%>">
		<!-- various input boxes for the form -->
		<input type="submit" value="View Cart">
	</form>
	<form action="<%=Strings.RESERVATION%>">
		<!-- various input boxes for the form -->
		<input type="submit" value="Make Another Reservation">
	</form>
</body>
</html>
