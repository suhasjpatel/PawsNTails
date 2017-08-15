<%@ page import="pawsntails.shared.Strings" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="<%=Strings.HEADER%>"/>

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
        height: 0;
        transition: .5s ease;
    }
    
    .hover_overlay:hover .overlay {
        opacity: 1;
        height: 25%;
        width: 100%
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
    .check
	{
    	opacity: .5;
	}

</style>

<body>

<jsp:include page="<%=Strings.MENU%>"/>
<div class="container">
    <center>
        <h1>Let's get Started!</h1>
        
        <h3>Pick enter a date you wish to begin stay.</h3>
        
        <form class="form-inline" action="<%=Strings.RESERVATION_SERV %>" method="post">
            <input type="hidden" name="formName" value="breeds">
            
        <div class="well">
    <input data-format="dd/MM/yyyy" placeholder="dd/MM/yyyy" type="text"  name = "fromDate" id = "fromDate"></input>
</div>
        <h3>Pick enter a date you wish to end stay.</h3>
         <div class="well">
    <input data-format="dd/MM/yyyy" placeholder="dd/MM/yyyy" type="text" name = "toDate" id = "toDate"></input>
</div>
        <hr>
        <h3>Pick an animal breeds you wish to book.</h3>

        
            <div class="form-group">
                <div class="hover_overlay">
                	<label class = "btn btn-primary"><img src="resources/images/dogicon_1.jpg" class="img-thumbnail img-check">
                	<input type = "checkbox" name ="Dog" id = "Dog" value ="Dog" class = "hidden" autocomplete = "off"></label>
                    <div class="overlay">
                        <div class="text">Dog</div>
                    </div>
                </div>
                <div class="hover_overlay">
                	<label class = "btn btn-primary"><img src="resources/images/caticon_1.jpg" class="img-thumbnail img-check">
                	<input type = "checkbox" name ="Cat" id = "Cat" value ="Cat" class = "hidden" autocomplete = "off"></label>
                    <div class="overlay">
                        <div class="text">Cat</div>
                    </div>
                </div>
                <div class="hover_overlay">
                	<label class = "btn btn-primary"><img src="resources/images/othericon_1.jpg" class="img-thumbnail img-check">
                	<input type = "checkbox" name ="Other" id = "Other" value ="Other" class = "hidden" autocomplete = "off"></label>
                    <div class="overlay">
                        <div class="text">Other</div>
                    </div>
                </div>
                
            </div>
            <br>
            <br>
            <br>
            <input type="submit" class="btn btn-default" value="Next">
        </form>
    </center>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="check.js">  </script>
</body>
</html>
