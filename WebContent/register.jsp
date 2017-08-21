<%--@elvariable id="errorMessageRegister" type="java.lang.String"--%>
<%@ page import="pawsntails.shared.Strings" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="<%=Strings.HEADER%>"/>
<body>
<jsp:include page="<%=Strings.MENU%>"/>
<div class="container" style="text-align: center">
    <span class="error" style="color: red">${errorMessageRegister}</span>
    <form action="<%=Strings.ACCOUNT_SERV %>" method="post" class="form-horizontal">
        <jsp:include page="account.jsp"/>
        <input type="submit" class="btn btn-default" value="Save"/>
    </form>
</div>
</body>
</html>
