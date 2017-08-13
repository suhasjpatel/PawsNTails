<%@ page import="pawsntails.shared.Strings" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="<%=Strings.HEADER%>"/>
<body>
<jsp:include page="<%=Strings.MENU%>"/>

<div class="container">
    <center>
        <h3>Already have an account?</h3>
        <span class="error" style="color:red">${errorMessageLogin}</span>
        <form action="<%=Strings.LOGIN_SERV%>" method="post" class="form-horizontal">
            <div class="form-group">
                <label class="control-label col-sm-2" for="email1">Email:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="email1"
                           placeholder="Enter email" name="email">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="password">Password:</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="password"
                           placeholder="Enter password" name="password">
                </div>
            </div>
            <input type="submit" value="Login"/>
        </form>

        <h3>If not Register!</h3>
        <span class="error" style="color:red">${errorMessageRegister}</span>
        <form action="<%=Strings.REGISTER_SERV%>" method="post" class="form-horizontal">
            <div class="form-group">
                <label class="control-label col-sm-2" for="email">Email:</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control" id="email"
                           placeholder="Enter email">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="password">Password:</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="password"
                           placeholder="Enter password" name="password">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="address">Address
                    Line 1:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="address"
                           placeholder="Enter address" name="address">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="address2">Address
                    line 2:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="address2"
                           placeholder="Enter address line 2" name="address2">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="city">City/Town:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="city"
                           placeholder="Enter city" name="city">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="state">State:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="state"
                           placeholder="Enter state" name="state">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="zipcode">Zipcode:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="zipcode"
                           placeholder="Enter zipcode" name="zipcode">
                </div>
            </div>
            <input type="submit" value="Register"/>
        </form>
    </center>
</div>
</body>
</html>
