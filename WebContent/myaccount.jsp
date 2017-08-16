<%@ page import="pawsntails.shared.Strings"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="pawsntails.models.Account"%>
<html>
<jsp:include page="<%=Strings.HEADER%>" />
<body>
	<jsp:include page="<%=Strings.MENU%>" />
	<div class="container">
		<center>
			<%
				if (session.getAttribute(Strings.ACCOUNT) == null) {
			%>
			<h1>Looks like you haven't signed in. Please click the link
				below to sign in or to create an account</h1>
			<form action="<%=Strings.LOGIN%>">
				<input type="submit" value="Login/Register" />
			</form>
			<%
				} else { 
					Account account = (Account)session.getAttribute(Strings.ACCOUNT);
			%>
			<h1>Thank you for registering!</h1>
			<h3>Below is your account information</h3>
			
			<br>
			
			<table class="table table-striped">
			<tbody>
			<tr>
			<td>First Name: </td>
			<td> <%=account.getFirstName() %> </td>
			</tr>
			<tr>
			<td>Last Name: </td>
			<td> <%=account.getLastName() %></td>
			</tr>
			<tr>
			<td>Email: </td>
			<td> <%=account.getEmail() %> </td>
			</tr>
			<tr>
			<td>Address Line 1: </td>
			<td> <%=account.getAddress() %></td>
			</tr>
			<tr>
			<td>Address Line 2: </td>
			<td> <%=account.getAddress2() %></td>
			</tr>
			<tr>
			<td>City/Town: </td>
			<td> <%=account.getCity() %></td>
			</tr>
			<tr>
			<td>State: </td>
			<td><%=account.getState() %></td>
			</tr>
			<tr>
			<td>Zipcode: </td>
			<td> <%=account.getZip() %> </td>
			</tr>
			</tbody>
			</table>
			<form action = "<%=Strings.REGISTER%>">
				<input type="submit" value="Edit"></input>
			</form>

			<%
				}
			%>
		</center>
	</div>
</body>
</html>
