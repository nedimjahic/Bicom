<!doctype html>

<?php 
	
	// replace database credentials accordingly
	$con=mysqli_connect("localhost","root","","user_management");
	
	// check connection
	if (mysqli_connect_errno()) {
	  echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}	

	$user_id = null;

	if(isset($_GET['user_id'])){
		$user_id = $_GET['user_id'];
		$fullname = $_GET['fullname'];
		$username = $_GET['username'];
		$email = $_GET['email'];
		$password = $_GET['password'];	
	}
?>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Assignment#4</title>
		<style>
			#container { width: 1000px; margin: 0 auto; }
			h1 { text-align: center; }
			#pagination { text-align: center; }
			a { color: #0068D2; cursor: pointer; }
			a:link, a:visited { text-decoration: none; color: #0068D2; }
			a:hover, a:active { text-decoration: underline; color: #0068D2; }

			body { font: 12px/18px "Lucida Grande", "Lucida Sans Unicode", sans-serif; }
			#table { border-collapse: collapse; }
			#table, #table th, #table td { margin: 0 auto; padding: 8px 16px; text-align: left; border: 0px solid #B9BABE; }
			#table th { font-weight: bold; font-size: 14px; color: #29344B; }
			#table td { color: #000; text-align: center;}
			#table tr:nth-child(2n) { background: #E8EDFF; }
			#form { padding: 10px; }
			.text input, .button input { padding: 5px; margin: 0; border: 1px solid #ccc; -moz-border-radius: 2px; -webkit-border-radius: 2px; border-radius: 2px; }
			#form .item { margin: 3px 0; }
			#form label, #form .field { display: inline-block; color: #0C0B07; }
			#form label { width: 110px; font-weight: bold; text-align: right; color: #666; }
			#form .text input { width: 176px; padding: 3px; }
			#form .button { display: inline-block; }
			#form .button-wrapper { padding-left: 113px; margin-top: 5px;}
			#form a {font-weight: bold; color: #fff; background-color: #7ca0c7; background: -moz-linear-gradient(#acc6e1, #7ca0c7); background: -webkit-gradient(linear, 0 0, 0 100%, from(#acc6e1), to(#7ca0c7)); padding: 5px; border: 1px solid #5b80b2; border-radius: 2px; cursor: default; text-decoration: none; margin-left: 20px;}
			#form a:active {font-weight: bold; color: #fff; background-color: #7ca0c7; background: -moz-linear-gradient(#7ca0c7, #acc6e1); background: -webkit-gradient(linear, 0 0, 0 100%, from(#7ca0c7), to(#acc6e1)); padding: 5px; border: 1px solid #5b80b2; border-radius: 2px; cursor: default; text-decoration: none; margin-left: 20px;}
			.button input { padding: 4px 8px; color: #343434; background-color: #fdfdfd; background: -moz-linear-gradient(#fdfdfd, #e1e1e1); background: -webkit-gradient(linear, 0 0, 0 100%, from(#fdfdfd), to(#e1e1e1)); }
			.button-default input { font-weight: bold; color: #fff; background-color: #7ca0c7; background: -moz-linear-gradient(#acc6e1, #7ca0c7); background: -webkit-gradient(linear, 0 0, 0 100%, from(#acc6e1), to(#7ca0c7)); border-color: #5b80b2; }
		</style>
	</head>
	<body>
	<div id="container">
		<h1>User Management</h1>
		<?php 
			$total = implode(mysqli_fetch_assoc(mysqli_query($con, "SELECT COUNT(*) FROM um_user")));
			$dis=10;
			$total_page=ceil($total/$dis);
			$page_cur=(isset($_GET['page']))?$_GET['page']:1;
			$k=($page_cur-1)*$dis;
		 
			$ros=mysqli_query($con, "SELECT * FROM um_user LIMIT $k,$dis");
			
			echo "
				<table id='table'>
				<tr id='table-head'>
					<th>ID</th>
					<th>Full name</th>
					<th>Username</th>
					<th>Email</th>
					<th>Password</th>
					<th>Actions</th>
				</tr>";
				
			while($row = mysqli_fetch_array($ros)) {
			    echo "<tr><td>" . $row['user_id'] . " </td><td> " . $row['fullname'] . " </td><td> " . $row['username'] . " </td><td> " . $row['email'] . " </td><td> " . $row['password'] . "</td><td><a href='edit.php?id=" .$row['user_id']. "'>Edit</a> | <a href='remove.php?id=" .$row['user_id']. "'>Remove</a></td></tr>";
			}
			
			echo "</table><br/>";

			$longurl = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
			$shorturl = "assignment4.php";

			if(strpos($longurl, "&page"))
				$longurl = substr($longurl, 0, strpos($longurl, "&page"));

			if($page_cur>1)
			{
				if(isset($_GET['user_id'])){
					echo '<div id="pagination"><a href="'.$longurl.'&page='.($page_cur-1).'" style="cursor:pointer;color:green;" ><input style="cursor:pointer;background-color:#7ca0c7;border:1px black solid;border-radius:5px;width:120px;height:30px;color:white;font-size:15px;font-weight:bold; margin-right: 10px;" type="button" value=" Previous "></a>';
				}
				else
					echo '<div id="pagination"><a href="'.$shorturl.'?page='.($page_cur-1).'" style="cursor:pointer;color:green;" ><input style="cursor:pointer;background-color:#7ca0c7;border:1px black solid;border-radius:5px;width:120px;height:30px;color:white;font-size:15px;font-weight:bold; margin-right: 10px; " type="button" value=" Previous "></a>';
			}
			else
			{
			  echo '<div id="pagination"><input style="background-color:#7ca0c7;border:1px black solid;border-radius:5px;width:120px;height:30px;color:black;font-size:15px;font-weight:bold; margin-right: 10px;" type="button" value=" Previous ">';
			}
			for($i=1;$i<$total_page;$i++)
			{
				if($page_cur==$i)
				{
					echo ' <input style="background-color:#7ca0c7;border:2px black solid;border-radius:5px;width:30px;height:30px;color:black;font-size:15px;font-weight:bold; margin: 0 3px;" type="button" value="'.$i.'"> ';
				}
				else
				{
					if(isset($_GET['user_id'])){
					    echo '<a href="'.$longurl.'&page='.$i.'"> <input style="cursor:pointer;background-color:#7ca0c7;border:1px black solid;border-radius:5px;width:30px;height:30px;color:white;font-size:15px;font-weight:bold; margin: 0 3px;" type="button" value="'.$i.'"> </a>';
					}
					else
					    echo '<a href="'.$shorturl.'?page='.$i.'"> <input style="cursor:pointer;background-color:#7ca0c7;border:1px black solid;border-radius:5px;width:30px;height:30px;color:white;font-size:15px;font-weight:bold; margin: 0 3px;" type="button" value="'.$i.'"> </a>';
				
				}
			}
			if($page_cur<$total_page)
			{
				if(isset($_GET['user_id'])){
					echo '<a href="'.$longurl.'&page='.($page_cur+1).'"><input style="cursor:pointer;background-color:#7ca0c7;border:1px black solid;border-radius:5px;width:90px;height:30px;color:white;font-size:15px;font-weight:bold; margin-left: 10px;" type="button" value=" Next "></a>';
				}
				else
					echo '<a href="'.$shorturl.'?page='.($page_cur+1).'"><input style="cursor:pointer;background-color:#7ca0c7;border:1px black solid;border-radius:5px;width:90px;height:30px;color:white;font-size:15px;font-weight:bold; margin-left: 10px;" type="button" value=" Next "></a>';
			}
			else
			{
			 echo '<input style="background-color:#7ca0c7;border:1px black solid;border-radius:5px;width:90px;height:30px;color:black;font-size:15px;font-weight:bold; margin-left: 10px;" type="button" value="   Next "></div>';
			}
		?>
		<form id="form" action="save.php" method="post" name="form">
			<div class="item text">
				<label>Full name:</label>
				<div class="field"><input type="text" name="fullname" value="<?php if(isset($_GET['fullname'])){echo $fullname;} ?>"/></div>
			</div>
			<div class="item text">
				<label>Username:</label>
				<div class="field"><input type="text" name="username" value="<?php if(isset($_GET['username'])){echo $username;} ?>"/></div>
			</div>
			<div class="item text">
				<label>Email:</label>
				<div class="field"><input type="text" name="email" value="<?php if(isset($_GET['email'])){echo $email;} ?>"/></div>
			</div>
			<div class="item text">
				<label>Password:</label>
				<div class="field"><input type="text" name="password" value="<?php if(isset($_GET['password'])){echo $password;} ?>"/></div>
			</div>
			<div class="button-wrapper">
				<div class="item button">
					<div class="field"><a id="discard" href="assignment4.php">Discard</a></div>
				</div>
				<div class="item button button-default">
					<a href="#" onclick="document.form.submit();">Save</a>
				</div>
			</div>
			<input type="hidden" name="user_id" value=<?php echo $user_id; ?> />
		</form>	
		</div>
	</body>
</html>