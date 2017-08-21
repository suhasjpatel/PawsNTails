<%@ page import="pawsntails.shared.Strings" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="account" scope="session" class="pawsntails.models.Account"/>
<html>
<jsp:include page="<%=Strings.HEADER%>"/>
<body>
<jsp:include page="<%=Strings.MENU%>"/>
<div class="container" style="text-align: center">
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
    <h1>Thank you for registering!</h1>
    <h3>Below is your account information</h3>

    <br>

    <table class="table table-striped">
        <tbody>
        <tr>
            <td>First Name:</td>
            <td>${account.firstName}</td>
        </tr>
        <tr>
            <td>Last Name:</td>
            <td>${account.lastName}</td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>${account.email}</td>
        </tr>
        <tr>
            <td>Address Line 1:</td>
            <td>${account.address}</td>
        </tr>
        <tr>
            <td>Address Line 2:</td>
            <td>${account.address2}</td>
        </tr>
        <tr>
            <td>City/Town:</td>
            <td>${account.city}</td>
        </tr>
        <tr>
            <td>State:</td>
            <td>${account.state}</td>
        </tr>
        <tr>
            <td>ZIP Code:</td>
            <td>${account.zip}</td>
        </tr>
        </tbody>
    </table>

    <br/>

    <form action="<%=Strings.REGISTER%>">
        <input type="submit" class="btn btn-default" value="Edit">
    </form>
    <%
        }
    %>
</div>
</body>
</html>
