<?php require_once('includes/db.php');

if(isset($mysqli,$_POST['submit'])){
    $username = mysqli_real_escape_string($mysqli,$_POST['username']);
    $password = mysqli_real_escape_string($mysqli,$_POST['password']);
    $query1=mysqli_query($mysqli,"SELECT username,password,type,permission,name,employee_id FROM users");
	while($row=mysqli_fetch_array($query1))
	{
        $db_name=$row["name"];
		$db_employee_id=$row["employee_id"];
		$db_username=$row["username"];
		$db_password=$row["password"];
		$db_type=$row["type"];
        $db_per=$row["permission"];
		
		if($username==$db_username && $password==$db_password){
			session_start();
			$_SESSION["username"]=$db_username;
			$_SESSION["type"]=$db_type;
            $_SESSION["permission"]=$db_per;
            $_SESSION["name"]=$db_name;
            $_SESSION["employee_id"]=$db_employee_id;
			
			if($_SESSION["type"]=='user'){
               
				if($_SESSION["permission"]=='1'){
				header("Location:admin/dashboard.php");
				}
				else if($_SESSION["permission"]=='2'){
				header("Location:user1/dashboard.php");
				}
				else if($_SESSION["permission"]=='3'){
				header("Location:user2/dashboard.php");
				}
				else if($_SESSION["permission"]=='4'){
				header("Location:user_HR/dashboard.php");
				}
				else if($_SESSION["permission"]=='5'){
				header("Location:user_Finance/dashboard.php");
				}
			}
		}
    }
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>D&P Intranet Web System | LOGIN</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<style>
	form {
    background: rgba(162, 181, 205, 0.8);
    width: 640px;
    margin: 50px auto;
    max-width: 70%;
    border-radius: 10px;
    padding: 55px 30px;
	}	
</style>
</head>
<body style="background-image: url('wallpaper8.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
	
	
	<div class="container-login100">
		<div class="container-baik">
			<form method="post" action="index.php">
			<center>
				<center><img src="dnplogo.png" style="width:120px;height:120px;"></center><br>
				<span class="login100-form-title p-b-37">
					DHIR & PARTNERS INTRANET WEB SYSTEM
					<div style="color:red;font-size:19px"><br><center>LOGIN</center></div>
				</span>

				<div class="wrap-input100 validate-input m-b-20" data-validate="Enter username ">
					<input class="input100" type="text" name="username" placeholder="username ">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25" data-validate = "Enter password">
					<input class="input100" type="password" name="password" placeholder="password">
					<span class="focus-input100"></span>
				</div>

				<div class="container-login100-form-btn">
					<button class="login100-form-btn" type="submit" name="submit">
						Sign In
					</button>
				</div>
				<a href="register.php" style="font-size: 15px; font-family: SourceSansPro-Regular;">Register</a>
			</center>
			</form>

			
		</div>
	</div>
	
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>