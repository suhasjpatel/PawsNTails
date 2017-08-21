<%@ page import="pawsntails.models.ReservationBean" %>
<%@ page import="java.text.SimpleDateFormat" %>
<jsp:useBean id="reservations" scope="session" class="pawsntails.models.ReservationsBean"/>

<br/>
<table class="table table-striped">
    <thead>
    <tr>
        <th>Date</th>
        <th>Breed</th>
        <th>Room Type</th>
        <th>Activities</th>
    </tr>
    </thead>
    <tbody>
    <%
        SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
        for (ReservationBean reservation : reservations.getReservations()) {
    %>
    <tr>
        <td>
            <%=formatter.format(reservation.getFromDate())%> - <%=formatter.format(reservation.getToDate())%>
        </td>
        <td><%=reservation.getAnimal()%>
        </td>
        <td><%=reservation.getRoom()%>
        </td>
        <td><%=reservation.getActivities()%>
        </td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>