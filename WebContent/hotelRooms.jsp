<%@ page import="pawsntails.shared.Strings"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<jsp:include page="<%=Strings.HEADER%>" />
<body>
	<jsp:include page="<%=Strings.MENU%>" />
	<div class="container">
		<center>
			<% //IF DOG %>
			<img alt="dog house" src="resources/images/doghouse.jpg">
			
			<br>
			<br>
			<p>For <b>dogs</b> we offer two different room styles. </p> <br>
			<p><u><b>Standard Guest Room:</b></u> This room is an open-air atrium that's <br>
						cleaned and sanitized daily and furnished with hypoallergenic bedding.</p>
			<p><u><b>Luxury Private Room:</b></u> These large suites are separated from the standard rooms for a <br>
			more peacful, private environment. They can hold multiple pets which are perfect for multiple pets in a family.
			<br> Rooms are cleaned and sanitized daily and feature a raised cot and TV tuned to 
			<br> pet-themed shows. </p>
			
			<h3> Please select room accomodations: </h3>
			
			<form>
				<label class="radio-inline"> <input type="radio"
					name="dog_rooms">Standard Guest Room
				</label> <label class="radio-inline"> <input type="radio"
					name="dog_rooms"> Luxury Private Room </label>
					<br><br>
				<input class = "btn btn-default" type="button" value="Submit">
			</form>
			
			
			
			<br>
			<br>
			<% //IF CAT %>
			<img alt="cat tree" src="resources/images/catTree.jpg">
			
			<p>For <b>cats</b> we offer one room style. </p> <br>
			<p><u><b>Kitty Sanctuary:</b></u> Our kitty sanctuary is seperated from the dogs and the other animals. <br>
						The rooms are in an open-air atrium that's cleaned and sanitized daily and furnished. <br>
						with hypoallergenic bedding. If boarding two cats there are rooms with connecting doors.</p>
			
			<form>
				<label class="radio-inline"> <input type="radio"
					name="cat_rooms">Kitty Sanctuary </label>
					<br><br>
				<input class = "btn btn-default"  type="button" value="Submit">	
			</form>
			
			
			<br>
			<br>
			<% //IF OTHER %>
			<img alt="other house" src="resources/images/doghouse.jpg">
			<p>For <b>small animals </b> including <b>birds, rabbits or reptiles</b> we offer one room style. </p> <br>
			<p><u><b>Critter Crate:</b></u> We will hold your small animal in a well ventulated room <br>
						Depending on your pet's needs we will clean their cages accordingly. Must bring your own cage.</p>
			
			<form>
				<label class="radio-inline"> <input type="radio"
					name="other_rooms">Critter Crate </label>
					<br><br>
				<input type="button" class = "btn btn-default"  value="Submit">
			</form>
		</center>
	</div>
</body>
</html>