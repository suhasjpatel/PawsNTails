<%@ page import="pawsntails.shared.Strings" %>
<jsp:useBean id="account" scope="session" class="pawsntails.models.Account"/>

<div class="container">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="<%=Strings.INDEX%>">Paws N' Tails Pet Hotel</a>
            </div>
            <ul class="nav navbar-nav">
                <li><a href="<%=Strings.MYACCOUNT%>">My Account</a></li>
                <li><a href="<%=Strings.CART%>">My Cart </a></li>
                <%if (account.getEmail() == null) {%>
                <li><a href="<%=Strings.LOGIN%>">Login </a></li>
                <%
                } else {
                %>
                <li><a href="<%=Strings.LOGOUT%>">Logout </a></li>
                <%}%>
            </ul>
            <%if (account.getEmail() != null) {%>
            <p class="navbar-text pull-right">Welcome ${account.firstName}</p>
            <%}%>
        </div>
    </nav>
</div>