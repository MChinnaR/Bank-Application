<!DOCTYPE html>
<html>
<head>
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
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}
.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
.container .button:hover {
  background-color: red;
  color: white;
}
hr.new{
  border: 7px solid blue;
  border-radius: 5px;
}
hr.new1{
  border: 2px dotted red;
  border-radius: 2px;
}
</style>
</head>
<body bgcolor="black">
<center>
<h1><font color="red"><i>Welcome To Online Banking</strong></h1></font><font color="red" size=30><hr class="new1"><hr class="new"><hr class="new1"></font>
<div class="container">

	<form action="CheckBalance"><button class="button" style="width: 500px; height: 70px;">CheckBalance</button></form><br>
	<form action="Transfer"><button class="button" style="width: 500px; height: 70px;">TransferMoney</button></form><br>
	<form action="ApplyLone"><button class="button" style="width: 500px; height: 70px;">ApplyLone</button></form><br>
	<form action="ChangePassword"><button class="button" style="width: 500px; height: 70px;">ChangePassword</button></form><br>
	<form action="Statement"><button class="button" style="width: 500px; height: 70px;">GetStatement</button></form><br>
	<form action="Login"><button class="button" style="width: 500px; height: 70px;">Logout</button></form><br>
  
</div>
</center>
</body>
</html>
