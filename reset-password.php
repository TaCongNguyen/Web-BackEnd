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
		
			<div class="container padding-bottom-3x mb-2 mt-5">
			<div class="row justify-content-center">
				<div class="col-lg-8 col-md-10">
					<div class="forgot">
						<h2>Lấy lại mật khẩu</h2>
						
						
					</div>
					<form class="card mt-4" method="POST" action="new-password.php">
						<input type="hidden" name="email" class="form-control" value="<?php echo $email; ?>">
						<input type="hidden" name="reset_token" class="form-control" value="<?php echo $reset_token; ?>">
						<div class="card-body">
							<div class="form-group"> <label for="password">Điền mật khẩu mới</label> <input type="password" name="new_password" class="form-control" id="pass"  required placeholder="Nhập mật khẩu mới"> </div>
						</div>
						<div class="card-footer"> <button class="btn btn-success"  type="submit">Đổi mật khẩu</button></div>
					</form>
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

        .form-control:focus {
            color: #495057;
            background-color: #fff;
            border-color: #76b7e9;
            outline: 0;
            box-shadow: 0 0 0 0px #28a745
        }
        .mx-auto{
          margin-top: 20px;
        }
       </style>
   </head>
