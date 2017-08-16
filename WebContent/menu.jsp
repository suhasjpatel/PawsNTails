<%@ page import="pawsntails.shared.Strings" %>
<%@ page import="pawsntails.models.Account" %>
<div class="container">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="${pageContext.request.contextPath}">Paws N' Tails Pet Hotel</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="<%=Strings.MYACCOUNT%>">My Account</a></li>
                <li><a href="<%=Strings.CART%>">My Cart </a></li>
                <% if (session.getAttribute(Strings.ACCOUNT) == null)  {%>
                <li><a href="<%=Strings.LOGIN%>">Login </a></li> <%} %>
                
            </ul>
            <% if (session.getAttribute(Strings.ACCOUNT) != null)  {
            	Account account = (Account)session.getAttribute(Strings.ACCOUNT);%>
            <p class="navbar-text pull-right">Welcome <%=account.getFirstName() %></p>
            <%} %>
        </div>
    </nav>
</div>