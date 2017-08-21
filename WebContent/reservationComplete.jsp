<%@ page import="pawsntails.models.ReservationsBean" %>
<%@ page import="pawsntails.shared.Strings" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="new_reservations" scope="session" class="pawsntails.models.ReservationsBean"/>

<html>
<jsp:include page="<%=Strings.HEADER%>"/>
<body>
<jsp:include page="<%=Strings.MENU%>"/>

<div class="container" style="text-align: center">
    <h1>Thank you picking us to book your beloved pet overnight!</h1>
    <h3>Below is a review of your booking. It will be added to your cart for checkout.</h3>

    <jsp:include page="reservationTable.jsp"/>

    <%
        session.setAttribute("new_reservations", new ReservationsBean());
    %>

    <form action="<%=Strings.CART%>">
        <!-- various input boxes for the form -->
        <input type="submit" class="btn btn-default" value="View Cart">
    </form>
    <form action="<%=Strings.RESERVATION%>">
        <!-- various input boxes for the form -->
        <input type="submit" class="btn btn-default" value="Make Another Reservation">
    </form>
</div>
</body>
</html>
