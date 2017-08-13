<%@ page import="pawsntails.shared.Strings"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<jsp:include page="<%=Strings.HEADER%>" />

<style>
.hover_overlay {
  position: relative;
  width: 100%
}

.overlay {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  background-color: #008CBA;
  overflow: hidden;
  width: 100%;
  height:0;
  transition: .5s ease;
}

.hover_overlay:hover .overlay {
  opacity: 1;
  height: 25%;
  width:100%
}

.text {
  color: white;
  font-size: 20px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
}
</style>

<body>
	<jsp:include page="<%=Strings.MENU%>" />
	<div class="container">
		<center>
			<h1>Let's get Started!</h1>
			<h3>Pick an animal breed you wish to book.</h3>

			<form class="form-inline" action="<%=Strings.RESERVATION_SERV%>">
				<input type="hidden" name="formName" value="reservation">
				<div class="form-group">
					<div class="hover_overlay">
						<input id="dog" name = "dog" type="image" src="dogicon_1.jpg" text="dog">
						<div class="overlay">
							<div class="text">Dog</div>
						</div>
					</div>
					<div class="hover_overlay">
						<input id="cat" type="image" src="caticon_1.jpg">
						<div class="overlay">
							<div class="text">Cat</div>
						</div>
					</div>
					<div class="hover_overlay">
						<input id="reptile" type="image" src="othericon_1.jpg">
						<div class="overlay">
							<div class="text">Other</div>
						</div> 
					</div>
				</div>
			</form>
		</center>
	</div>
</body>
</html>
