<%@ page import="pawsntails.shared.Strings" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="<%=Strings.HEADER%>"/>
<%@ page import="pawsntails.models.Account"%>
<body>
<jsp:include page="<%=Strings.MENU%>"/>
<div class="container">
    <center>
    <% Account account = (Account)session.getAttribute(Strings.ACCOUNT); %>
    <span class="error" style="color: red">${errorMessageRegister}</span>
			<form action="<%=Strings.REGISTER_SERV%>" method="post"
				class="form-horizontal">
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="firstName">First
						Name:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="firstName"
							name="firstName" value = "<%=account.getFirstName()%>">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="lastName">Last
						Name:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="lastName"
							value = "<%=account.getLastName()%>"name="lastName">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="email">Email:</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="email"
							value = "<%=account.getEmail()%>">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="password">Password:</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="password"
							value = "<%=account.getPassword()%>" name="password">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="address">Address
						Line 1:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="address"
							value = "<%=account.getAddress()%>" name="address">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="address2">Address
						line 2:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="address2"
							value = "<%=account.getAddress2()%>" name="address2">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="city">City/Town:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="city"
							value = "<%=account.getCity()%>" name="city">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="state">State:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="state"
							value = "<%=account.getState()%>" name="state">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="zipcode">Zipcode:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="zipcode"
							value = "<%=account.getZip()%>" name="zipcode">
					</div>
				</div>
				<input type="submit" value="Save" />
			</form>
    </center>
</div>
</body>
</html>
