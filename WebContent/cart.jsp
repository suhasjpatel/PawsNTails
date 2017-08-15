<%@ page import="pawsntails.shared.Strings" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="<%=Strings.HEADER %>"/>
<body>
<jsp:include page="<%=Strings.MENU %>"/>
<%@	page import="pawsntails.shared.ReservationBean"%>
	<%@	page import="java.util.*"%>
	<%@	page import = "java.text.SimpleDateFormat" %>
<div class = "container">
<center>

<center>
			<h1>Thank you picking us to book your beloved pet overnight!</h1>
			<h3>Below is a review of your booking. It will be added to your cart for checkout.</h3>
			
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
			
			<% ArrayList<ReservationBean> reservations = (ArrayList<ReservationBean>)session.getAttribute("reservations"); 
				for (int i = 0; i < reservations.size(); i++) {
					ReservationBean reservation = reservations.get(i);
					SimpleDateFormat formatter=new SimpleDateFormat("dd/MM/yyyy");  
					
					//TODO need to add an edit page 
					//form doesn't work right now
			%>
			<form>
			<tr>
			<td> 
			<%=reservation.datePretty(reservation.getFromDate()) %> - <%=reservation.datePretty(reservation.getToDate()) %></td>
			<td> <%=reservation.getAnimal() %></td>
			<td> <%=reservation.getRoom()%></td>
			<td> <%=Arrays.toString(reservation.getActivities()) %></td>
			<td> <input type="button" value="Edit"></input></td>
			</tr>
			</form>
			<%}%>
			</tbody>	
			</table>

		</center>





</center></div>
<form action="<%=Strings.RESERVATION_SERV %>">
    <!-- edit a reservation -->
    <input type="submit" value="Edit Reservation">
</form>

<form action="<%=Strings.RESERVATION %>">
    <input type="submit" value="Make Another Reservation">
</form>

<form action="<%=Strings.CHECKOUT_SERV %>">
    <input type="submit" value="Checkout">
</form>
</body>
</html>
