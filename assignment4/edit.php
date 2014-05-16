<?php 

$id = $_GET['id'];

$con=mysqli_connect("localhost","root","","user_management");
// Check connection
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$query = mysqli_query($con, "SELECT * FROM um_user WHERE user_id = " .$id);

while($row = mysqli_fetch_assoc($query)){
	$id = $row['user_id'];
	$fullname = $row['fullname'];
	$username = $row['username'];
	$email = $row['email'];
	$password = $row['password'];
}

header("Location: assignment4.php?user_id=".$id."&fullname=".$fullname."&username=".$username."&email=".$email."&password=".$password);
