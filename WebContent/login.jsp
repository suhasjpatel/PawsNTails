<%--@elvariable id="errorMessageLogin" type="java.lang.String"--%>
<%--@elvariable id="errorMessageRegister" type="java.lang.String"--%>
<%@ page import="pawsntails.shared.Strings" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="login" scope="request" class="pawsntails.models.Account"/>

<html>
<jsp:include page="<%=Strings.HEADER%>"/>
<body>
<jsp:include page="<%=Strings.MENU%>"/>

<div class="container" style="text-align: center">
    <h3>Already have an account?</h3>
    <span class="error" style="color: red">${errorMessageLogin}</span>
    <form action="<%=Strings.LOGIN_SERV%>" method="post" class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-sm-2" for="login_email">Email:</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" id="login_email"
                       placeholder="Enter Email" name="email" value="${login.email}" required>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="login_password">Password:</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="login_password"
                       placeholder="Enter Password" name="password" value="${login.password}" required>
            </div>
        </div>

        <input type="submit" class="btn btn-default" value="Login"/>
    </form>

    <h3>If not Register!</h3>
    <span class="error" style="color: red">${errorMessageRegister}</span>
    <form action="<%=Strings.REGISTER_SERV%>" method="post" class="form-horizontal">
        <jsp:include page="account.jsp"/>
        <input type="submit" class="btn btn-default" value="Register"/>
    </form>
</div>
</body>
</html>
