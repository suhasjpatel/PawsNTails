<%--@elvariable id="errorMessageReservation" type="java.lang.String"--%>
<%@ page import="pawsntails.shared.Strings" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="<%=Strings.HEADER%>"/>
<body>
<jsp:include page="<%=Strings.MENU%>"/>

<div class="container" style="text-align:center">
    <h1>Room Accommodations</h1>
    <form action="<%=Strings.RESERVATION_SERV %>" method="post">
        <input type="hidden" name="formName" value="rooms">
        <%
            if (Arrays.asList(request.getParameterValues("pets")).contains("Dog")) {
        %>
        <img alt="Dog House" src="resources/images/doghouse.jpg"> <br>
        <br/>
        <p>For <b>dogs</b> we offer two different room styles.</p>
        <br/>
        <p>
            <u><b>Standard Guest Room:</b></u> This room is an open-air atrium
            that's <br> cleaned and sanitized daily and furnished with
            hypoallergenic bedding.
        </p>
        <p>
            <u><b>Luxury Private Room:</b></u> These large suites are separated
            from the standard rooms for a <br> more peacful, private
            environment. They can hold multiple pets which are perfect for
            multiple pets in a family. <br> Rooms are cleaned and
            sanitized daily and feature a raised cot and TV tuned to <br>
            pet-themed shows.
        </p>
        <br/>
        <h4><u>Please select room accommodations:</u></h4>
        <label class="radio-inline">
            <input type="radio" name="dog_rooms" value="standard" required>Standard Guest Room
        </label>
        <label class="radio-inline">
            <input type="radio" name="dog_rooms" value="luxury">Luxury Private Room
        </label>
        <br/>
        <br/>
        <% }
            if (Arrays.asList(request.getParameterValues("pets")).contains("Cat")) {
        %>
        <img alt="Cat Tree" src="resources/images/catTree.jpg"> <br>
        <br/>
        <p>For <b>cats</b> we offer one room style.</p>
        <br/>
        <p>
            <u><b>Kitty Sanctuary:</b></u> Our kitty sanctuary is seperated
            from the dogs and the other animals. <br> The rooms are in an
            open-air atrium that's cleaned and sanitized daily and furnished. <br>
            with hypoallergenic bedding. If boarding two cats there are rooms
            with connecting doors.
        </p>
        <h4><u>Please select room accommodations:</u></h4>
        <label class="radio-inline">
            <input type="radio" name="cat_rooms" value="sanctuary" required>Kitty Sanctuary
        </label>
        <br/>
        <br/>
        <% }
            if (Arrays.asList(request.getParameterValues("pets")).contains("Other")) {
        %>
        <img alt="Other House" src="resources/images/doghouse.jpg">
        <br/>
        <p>
            For <b>small animals </b> including <b>birds, rabbits or
            reptiles</b> we offer one room style.
        </p>
        <br/>
        <p>
            <u><b>Critter Crate:</b></u> We will hold your small animal in a
            well ventulated room <br> Depending on your pet's needs we
            will clean their cages accordingly. Must bring your own cage.
        </p>
        <h4><u>Please select room accommodations:</u></h4>
        <label class="radio-inline">
            <input type="radio" name="other_rooms" value="crate" required>Critter Crate
        </label>
        <br/>
        <br/>
        <%
            }
        %>
        <br/>
        <input type="submit" class="btn btn-default" value="Next">
    </form>
</div>
</body>
</html>
