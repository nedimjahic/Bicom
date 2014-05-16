<?php 

$id = $_GET['id'];

$con=mysqli_connect("localhost","root","","user_management");
// Check connection
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$query = mysqli_query($con, "DELETE FROM um_user WHERE user_id = " .$id);

header("Location: assignment4.php");
