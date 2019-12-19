<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 50px 0 12px 0;
}

img.avatar {
  width: 70%;
  border-radius: 70%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body bgcolor="black">

<h1><center><font color="white">Login Form</h1><hr><hr>

<form action="hello"><h2>
  <div class="imgcontainer">
    <marquee  behavior="slide" direction="right" loop="5">
		<img src="" alt="ENTER LOGIN DETAILS">
	</marquee>
  </div>
  <div class="container">
    <label for="uname"><b>username</b></label>
    <input type="text" placeholder="Enter username" name="t1" required>

    <label for="psw"><b>password</b></label>
    <input type="password" placeholder="Enter Password" name="t2" required>
    <button type="submit">Login</button>
</form>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
  <form action="End.html">
    <button type="submit" class="cancelbtn">Cancel</button></form>
    <span class="cpsw"><a href="Register1">Register</a></span>
    <span class="psw"><a href="Forget.html">Forgot password?</a></span>
  </div>

</body>
</html>
