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

		echo "Mật khẩu của bạn đã thay đổi";
	
}
else
{
	echo "Email không tồn tại";
}
?>

<!doctype html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   
      <title>Lấy lại mật khẩu của bạn</title>
       <!-- CSS -->
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
   </head>
   <body>
   <div class="text-left">
		<a href="login.php">Nhấn vào đây để đăng nhập lại.</a>
	</div>
   </body>
     
</html>