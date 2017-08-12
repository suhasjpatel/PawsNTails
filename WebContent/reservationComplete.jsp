<%@ page import="pawsntails.shared.Strings" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="<%=Strings.HEADER%>"/>
<body>
<jsp:include page="<%=Strings.MENU%>"/>
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
