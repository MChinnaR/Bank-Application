<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ChangePassword</title>
</head>
<style>
.button {
  display: block;
  padding: 20px 150px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: red;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}
.button:hover {background-color: #3e8e41}

.button:active {
  background-color: red;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
.container .button:hover {
  background-color: red;
  color: white;
}

hr.new1{
  border: 2px dotted red;
  border-radius: 3px;
}
</style>
<body bgcolor="black">
<hr class="new1"><hr class="new1"><font color="red"><h1><center>Enter details</center></h1><hr class="new1"><hr class="new1"><br><br>
<form action="ChangePassword1">
<center>
<font color="white"><center>
<%
//session=request.getSession();
//out.println("Your old password is : "+session.getAttribute("password")+"<br/>" );
//out.println("You can change the password or you can Login");
%></center></font>
	<!--  <h2>Old Password &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<input type="password" name="customerid" required><br><br>
	New Password &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<input type="text" name="phoneno" required><br><br>
	re-Enter New Password &nbsp;&nbsp;:<input type="text" name="newpassword1" required><br><br>-->
	 <h1><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;password :
  <input name="password" id="password" placeholder="[A-Z][a-z][0-9][Symbols]" type="text" onkeyup='check();' />
</label>
<br>
<label>confirm password:
  <input type="text" name="confirm_password" placeholder="[A-Z][a-z][0-9][Symbols]" id="confirm_password"  onkeyup='check();' /> <br>
  <span id='message'></span><br>
</label></h1>
</form>
<script type="text/javascript">
var check = function() {
	  if (document.getElementById('password').value ==
	    document.getElementById('confirm_password').value) {
	    document.getElementById('message').style.color = 'green';
	    document.getElementById('message').innerHTML = 'matching';
	  } else {
	    document.getElementById('message').style.color = 'red';
	    document.getElementById('message').innerHTML = 'not matching';
	  }
	}
</script>
	<button class="button" style="width: 100px; height: 50px;">Submit</button>
	<h1><center><a href="Login">Login</a></center></h1></center>
</form><br>
</body>
</html>