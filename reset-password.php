<?php

$email = $_GET["email"];
$reset_token = $_GET["reset_token"];

$connection = mysqli_connect("localhost", "root", "", "music_db");

$sql = "SELECT * FROM users WHERE email = '$email'";
$result = mysqli_query($connection, $sql);
if (mysqli_num_rows($result) > 0)
{
	$user = mysqli_fetch_object($result);
	
	
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
				<div class="container">
					<div class="card" >
						<div class="card-header text-center">
						Lấy lại mật khẩu
						</div>
						<div class="card-body mx-auto">
						<form method="POST" action="new-password.php">
							<input type="hidden" name="email" class="form-control" value="<?php echo $email; ?>">
							<input type="hidden" name="reset_token" class="form-control" value="<?php echo $reset_token; ?>">
							<div>
								<input class="d-block p-2 mt-2" id="pass" type="password" name="new_password" placeholder="Nhập mật khẩu mới">
								<input class="d-block p-2 mt-2" id="pass2" type="password" name="new_password" placeholder="Nhập lại mật khẩu">
								<input  type="submit" class="btn btn-primary d-block p-2 mt-2 mx-auto" value="Đổi mật khẩu">
							</div>
							
						</form>
						</div>
					</div>
				</div>
			
			</body>
			</html>
			
		
		<?php
	
	
}
else
{
	echo "Email không tồn tại";
}
?>

