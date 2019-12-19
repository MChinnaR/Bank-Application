<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: blue;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: ;
  text-align: center;
}
</style>
</head>
<body bgcolor="yellow">

<form action="in">
  <div class="container">
    <h1><center>Register</center></h1></center>
    <h3><p><font color="red">Please fill in this form to create an account.</p></font></h3>
    <hr><font color="blue">
    
	<label ><b>Name</b></label>
    <input type="text" placeholder="Enter name" name="name" required>
	
    <label ><b>username</b></label>
    <input type="text" placeholder="Enter customerid eg:chi123" name="username" required>
    
    <label>password :
  <input name="password" id="password" placeholder="[A-Z][a-z][0-9][Symbols]" type="password" onkeyup='check();' />
</label>
<br>
<label>confirm password:
  <input type="password" name="confirm_password" placeholder="[A-Z][a-z][0-9][Symbols]" id="confirm_password"  onkeyup='check();' /> 
  <span id='message'></span><br>
</label>
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
    <br><br>
    <label ><b>Phone Number</b></label>
    <input type="text" placeholder="Enter phone number" name="phoneno" required>
    
    
    <label ><b>DepositAmount</b></label>
    <input type="text" placeholder="Enter amount" name="amount" required>
    
   
</font>
    <hr>
    
    <button type="submit" class="registerbtn">Register</button>
  
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="Login">Sign in</a>.</p>
  </div>
</form>

</body>
</html>
