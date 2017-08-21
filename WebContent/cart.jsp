<%@ page import="pawsntails.shared.Strings" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="account" scope="session" class="pawsntails.models.Account"/>
<jsp:useBean id="reservations" scope="session" class="pawsntails.models.ReservationsBean"/>

<html>
<jsp:include page="<%=Strings.HEADER%>"/>
<body>
<jsp:include page="<%=Strings.MENU%>"/>

<div class="container" style="text-align:center;">
    <%
        if (account.getEmail() == null) {
    %>
    <h1>Looks like you haven't signed in. Please click the link
        below to sign in or to create an account</h1>
    <br/>
    <form action="<%=Strings.LOGIN%>">
        <input type="submit" class="btn btn-default" value="Login/Register"/>
    </form>
    <%} else {%>
    <h1>Thank you picking us to book your beloved pet overnight!</h1>
    <%
        if (!reservations.getReservations().isEmpty()) {
    %>

    <h3>Below is a review of your booking.</h3>

    <jsp:include page="<%=Strings.RESERVATIONTABLE%>"/>

    <form action="<%=Strings.CHECKOUT_SERV%>">
        <input type="submit" class="btn btn-default" value="Checkout">
    </form>
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
    %>
    <%
        }
    %>
</div>
</body>
</html>