<%--@elvariable id="errorMessageReservation" type="java.lang.String"--%>
<%@ page import="pawsntails.shared.Strings" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="<%=Strings.HEADER%>"/>
<body>
<jsp:include page="<%=Strings.MENU%>"/>
<div class="container" style="text-align: center">
    <h1>Activities</h1>

    <form action="<%=Strings.RESERVATION_SERV%>" method="post">
        <input type="hidden" name="formName" value="activities">

        <img alt="dog house" src="resources/images/mouse.jpg"> <img
            alt="dog house" src="resources/images/ball.jpg"> <img
            alt="dog house" src="resources/images/bones.jpg">
        <%
            if (request.getParameter("dog_rooms") != null) {
        %>
        <br>
        <p>
            For <b>dogs</b> we offer three different activities.
        </p>
        <br>
        <p>
            <u><b>Doggy Day Camp:</b></u> This is a fun energizing time where
            all the dogs <br> get to come together and release all their
            energy in play. <br> We have a variety of toys to keep your
            pup movin'! The environment is clean friendly and fun!
        </p>
        <p>
            <u><b>Grooming:</b></u> Our professional, academy-trained,
            safety-certified dog <br> and cat styles are at your service.
            You're pet will look great and smell fresh too!
        </p>
        <p>
            <u><b>Special Medication Time:</b></u> Our professional, safety-certified animal specialists <br>
            will give your pet the necessary medication prescribed.
        </p>

        <h4><u>Please select your choice of activity (optional):</u></h4>

        <label class="checkbox-inline"> <input type="checkbox" name="dog_activities" value="camp">
            Doggy Day Camp
        </label>

        <label class="checkbox-inline"> <input type="checkbox" name="dog_activities" value="grooming">
            Grooming
        </label>

        <label class="checkbox-inline"> <input type="checkbox" name="dog_activities" value="medication">
            Special Medication Time
        </label>
        <br/>
        <br/>
        <% }
            if (request.getParameter("cat_rooms") != null) {
        %>
        <br>
        <p>
            For <b>cats</b> we offer two different activities.
        </p>
        <br>
        <p>
            <u><b>Grooming:</b></u> Our professional, academy-trained,
            safety-certified dog <br> and cat styles are at your service.
            You're pet will look great and smell fresh too!
        </p>
        <p>
            <u><b>Special Medication Time:</b></u> Our professional, safety-certified animal specialists <br>
            will give your pet the necessary medication prescribed.
        </p>

        <h4><u>Please select your choice of activity (optional):</u></h4>

        <label class="checkbox-inline"> <input type="checkbox" name="cat_activities" value="grooming">
            Grooming
        </label>

        <label class="checkbox-inline"> <input type="checkbox" name="cat_activities" value="medication">
            Special Medication Time
        </label>
        <br/>
        <br/>
        <% }
            if (request.getParameter("other_rooms") != null) {
        %>
        <p>
            For <b>small animals </b> including <b>birds, rabbits or
            reptiles</b> we offer one activity.
        </p>

        <br>
        <p>
            <u><b>Special Medication Time:</b></u> Our professional, safety-certified animal specialists <br>
            will give your pet the necessary medication prescribed.
        </p>

        <h4><u>Please select your choice of activity (optional):</u></h4>
        <label class="checkbox-inline"> <input type="checkbox" name="other_activities" value="medication">
            Special Medication Time
        </label>
        <br/>
        <br/>
        <%
            }
        %>
        <input type="submit" class="btn btn-default" value="Next">
    </form>
</div>
</body>
</html>
