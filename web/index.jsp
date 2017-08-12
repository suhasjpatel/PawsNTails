<%@ page import="pawsntails.shared.Strings" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="<%=Strings.HEADER%>"/>
<body>
<jsp:include page="<%=Strings.MENU%>"/>
<form action="<%=Strings.RESERVATION%>">
    <input type="submit" value="Book a Reservation">
</form>
</body>
</html>
