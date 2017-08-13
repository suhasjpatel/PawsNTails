<%@ page import="pawsntails.shared.Strings" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="<%=Strings.HEADER%>"/>
<body>
<jsp:include page="<%=Strings.MENU%>"/>

<div class = "container">
	<center> <img align="middle" src="pet_hotel.jpg" alt="Pet Hotel Image"> 
		<br />
		<h1>Welcome to Paws N' Tails Pet Hotel</h1>
		<h4> We provide comfortable lodging that is welcoming to any of your furry or scaly friends! </h4>
	
<form action="<%=Strings.RESERVATION%>">
    <input type="submit" value="Book a Reservation">
</form>
</center>
</div>
</body>
</html>
