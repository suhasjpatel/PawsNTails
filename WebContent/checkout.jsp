<%@ page import="pawsntails.models.ReservationsBean" %>
<%@ page import="pawsntails.shared.Strings" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="account" scope="session" class="pawsntails.models.Account"/>
<jsp:useBean id="reservations" scope="session" class="pawsntails.models.ReservationsBean"/>

<html>
<jsp:include page="<%=Strings.HEADER%>"/>
<body>
<jsp:include page="<%=Strings.MENU%>"/>

<div class="container" style="text-align: center">
    <h1>Thank you picking us to book your beloved pet overnight!</h1>
    <h3>An email copy has been sent to your email: <%=account.getEmail()%>
    </h3>
    <%
        if (!reservations.getReservations().isEmpty()) {
    %>
    <h3>This was your requested booking.</h3>

    <jsp:include page="<%=Strings.RESERVATIONTABLE%>"/>


    <p>
        We will send you an invoice at the provided email in 1-2 business days. <br/>
        Payment will be due when pet is dropped off. <br/>
        We appreciate your business.
    </p>

    <form action="<%=Strings.RESERVATION_SERV%>">
        <input type="submit" class="btn btn-default" value="Make Another Reservation">
    </form>
    <%
    } else {
    %>
    <h3>It looks like you have yet to make a reservation.</h3>
    <form action="<%=Strings.RESERVATION_SERV%>">
        <input type="submit" class="btn btn-default" value="Make a Reservation">
    </form>
    <%
        }
        session.setAttribute("reservations", new ReservationsBean());
    %>
</div>


</body>
</html>
