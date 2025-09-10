<%@page import="java.util.ResourceBundle"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact_Us||Map My Service</title>
<%@ include file="/common/common_css.html" %>
<script>

function checkAlpha(event)
{
//console.log(event)//it is an object->property-value and functions
let data=event.target.value//fetch the value from name text field

const regEx=/^[a-zA-Z ]*$/	

//^means start of string and$means End * means 0 or more times
if(!regEx.test(data))
{
event.target.value=data.replace(/[^a-zA-Z ]/g, '');//^means apart from these charachers
Swal.fire({
	  title: "Format Error",
	  text: "Only Alphabets are allowed",
	  icon: "error"
	});
	
}

}//function close checkAlpha

function checkDigit(event) {
    let data = event.target.value;
//1
    if (event.key === "Backspace" || event.key === "Delete" || event.key === "ArrowLeft" || event.key === "ArrowRight") {
        return;
    }
    if (data.length > 10 && event.key !== "Backspace" && event.key !== "Delete") {
        alert("Only 10 digits are allowed");
        event.preventDefault();//if will prevent the task to execute
        return;
    }
    const regEx = /^[0-9]*$/;
    if (!regEx.test(data + event.key)) {
    	Swal.fire({
    		  title: "Number Format Error",
    		  text: "Only Digits are allowed",
    		  icon: "error"
    		});
        //alert("Only digits are allowed");
        event.preventDefault();  
    }
}
  </script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body style="background-image: url(/MapMyService/images/dddepth-348.jpg);">
<div class="main-div" >
<%@ include file="/common/header.html" %>
<div class="container-fluid text-white text-center" style="font-family: poppin;background-color: white">
<img alt="" src="/MapMyService/images/Feel   Free   To   Contact   Us.gif">
<!-- header included here -->
</div>
<%
ResourceBundle rb=ResourceBundle.getBundle("map/dbutils/db_info");
String tagLine=rb.getString("app.tagLine");
%>
<h1 style="margin-left: 35%;"><%=tagLine%></h1>
<div class="form" style="width: 800px;height: 600px;border: solid black;margin-left: 20%;margin-top: 5%;margin-bottom: 20%;">
<form action="/MapMyService/Contact_Us" method="post" class="w-100 needs-validation" style="min-height: 100vh;" novalidate="novalidate">
<div style="width: 200px;margin-top: 4%;margin-left: 30%;"><input type="text" placeholder="NAME" name="name" class="form-control"required="required"id="name" oninput="checkAlpha(event)">     <div class="invalid-feedback">
        Please enter your name.
      </div></div>
<div style="width: 300px;margin-top: 4%;margin-left: 30%;"><input type="email" placeholder="EMAIL" name="Email" class="form-control" required="required"><div class="invalid-feedback">
        Please enter your email.
      </div></div>
<div style="width: 200px;margin-top: 4%;margin-left: 30%;"><input type="text" placeholder="phone" name="phone" class="form-control" required="required" maxlength="10" onkeydown="checkDigit(event)"><div class="invalid-feedback">
        Please enter your number.
      </div></div>
<div style="width: 400px;margin-top: 4%;margin-left: 30%;"><textarea placeholder="Question" class="form-control" name="question" rows="5" cols="30" required="required"></textarea>     <div class="invalid-feedback">
        Please enter your question.
      </div></div>
<button class="btn btn-primary w-40" style="margin-top: 6%;margin-left: 40%;">SUBMIT</button>
</form>
<% String thankyoumessage=(String)request.getAttribute("message");
if(thankyoumessage!=null)
{
	%>	
	<span style="color: black;font-size: 40px;margin-left: 30%;border: solid;">
	<%=thankyoumessage%>
	</span>
<%}%>
</div>
</div>
<script src="/MapMyService/javascript/validation.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<%@ include file="/common/footer.jsp" %>
</body>
</html>