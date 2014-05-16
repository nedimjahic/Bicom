<?php 

$user_id = $_POST['user_id'];
$fullname = $_POST['fullname'];
$username = $_POST['username'];
$email = $_POST['email'];
$password = $_POST['password'];

$con = mysqli_connect("localhost", "root", "", "user_management");

if(mysqli_connect_errno()){
	echo "Failed to connect to MySQL:" . mysqli_connect_error();
}

$query = mysqli_query($con, "SELECT * FROM um_user WHERE `username` = '$username' OR `email` = '$email'");

echo mysqli_num_rows($query);
if(mysqli_num_rows($query) == 0){
	if($user_id == "/")
		$query = mysqli_query($con, "INSERT INTO um_user VALUES ('', '$fullname', '$username', '$email', '$password')");

	else{
		$query = mysqli_query($con, "UPDATE um_user SET 
									`fullname` = '$fullname', 
									`username` = '$username', 
									`email` = '$email', 
									`password` = '$password'
									WHERE `user_id` = '$user_id'");
	}	
}

header("Location: assignment4.php");
