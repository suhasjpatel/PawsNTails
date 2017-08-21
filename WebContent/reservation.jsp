<%--@elvariable id="errorMessageReservation" type="java.lang.String"--%>
<%@ page import="pawsntails.shared.Strings" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="reservations" scope="session" class="pawsntails.models.ReservationsBean"/>
<jsp:useBean id="new_reservations" scope="session" class="pawsntails.models.ReservationsBean"/>

<html>
<jsp:include page="<%=Strings.HEADER%>"/>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="css/reservation.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/check.js"></script>

<script>
    $(function () {
        $("#fromDate").datepicker();
        $("#toDate").datepicker();
    });
</script>

<body>
<jsp:include page="<%=Strings.MENU%>"/>
<div class="container" style="text-align: center">
    <h1>Let's get Started!</h1>

    <br/>

    <form class="form-inline" action="<%=Strings.RESERVATION_SERV %>" method="post">
        <input type="hidden" name="formName" value="breeds">
        <span class="error" style="color: red">${errorMessageReservation}</span>

        <h3>Pick enter a date you wish to begin stay.</h3>
        <div class="well">
            <input type="text" placeholder="MM/dd/yyyy" name="fromDate" id="fromDate" required>
        </div>

        <h3>Pick enter a date you wish to end stay.</h3>
        <div class="well">
            <input type="text" placeholder="MM/dd/yyyy" name="toDate" id="toDate" required>
        </div>
        <hr>

        <h3>Pick an animal breeds you wish to book.</h3>
        <div class="form-group">
            <div class="hover_overlay">
                <label class="btn btn-primary">
                    <img src="resources/images/dogicon_1.jpg" class="img-thumbnail img-check"
                         style="width:180px;height:160px">
                    <input type="checkbox" name="pets" id="Dog" value="Dog" class="hidden" autocomplete="off">
                </label>
                <div class="overlay">
                    <div class="text">Dog</div>
                </div>
            </div>
            <div class="hover_overlay">
                <label class="btn btn-primary">
                    <img src="resources/images/caticon_1.jpg" class="img-thumbnail img-check"
                         style="width:180px;height:160px">
                    <input type="checkbox" name="pets" id="Cat" value="Cat" class="hidden" autocomplete="off">
                </label>
                <div class="overlay">
                    <div class="text">Cat</div>
                </div>
            </div>
            <div class="hover_overlay">
                <label class="btn btn-primary">
                    <img src="resources/images/othericon_1.jpg" class="img-thumbnail img-check"
                         style="width:180px;height:160px">
                    <input type="checkbox" name="pets" id="Other" value="Other" class="hidden" autocomplete="off">
                </label>
                <div class="overlay">
                    <div class="text">Other</div>
                </div>
            </div>
        </div>
        <br>
        <br>
        <br>
        <input type="submit" class="btn btn-default" value="Next">
    </form>
</div>
</body>
</html>
