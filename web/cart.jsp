<%@ page import="pawsntails.shared.Strings" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="<%=Strings.HEADER %>"/>
<body>
<jsp:include page="<%=Strings.MENU %>"/>
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
