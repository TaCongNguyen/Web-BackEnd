<?php

$email = $_POST["email"];
$reset_token = $_POST["reset_token"];
$new_password = md5($_POST["new_password"]);

$connection = mysqli_connect("localhost", "root", "", "music_db");

$sql = "SELECT * FROM users WHERE email = '$email'";
$result = mysqli_query($connection, $sql);
if (mysqli_num_rows($result) > 0)
{
	$user = mysqli_fetch_object($result);
	
		$sql = "UPDATE users SET reset_token='', password='$new_password' WHERE email='$email'";
		mysqli_query($connection, $sql);
      ?>
		<div class="container padding-bottom-3x mb-2 mt-5">
	    <div class="row justify-content-center">
	        <div class="col-lg-8 col-md-10">
	            <div class="forgot">
	                <h2 class="text-center">Mật khẩu của bạn đã thay đổi</h2>
	                	                
	            </div>
	            
              <div class="row justify-content-center  mx-auto"><a href="login.php"><button class="btn btn-danger" type="submit">Về trang đăng nhập</button></a></div>
              
	        </div>
	    </div>
	</div>
   <?php
	
}
else
{
	echo "Email không tồn tại";
}
?>

<head>
	 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	 
       <style>
          body {
            background-position: center;
            background-color: #eee;
            background-repeat: no-repeat;
            background-size: cover;
            color: #505050;
            font-family: "Rubik", Helvetica, Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            line-height: 1.5;
            text-transform: none;
            background-image:url(./assets/uploads/background.jpg);
        }

        .forgot {
            background-color: #fff;
            padding: 12px;
            border: 1px solid #dfdfdf;
            border-radius: 10px;
        }

        .padding-bottom-3x {
            padding-bottom: 72px !important
        }

        .card-footer {
            background-color: #fff
        }

        .btn {
            font-size: 13px
        }

       
        .mx-auto{
          margin-top: 20px;
        }
		</style>
</head>