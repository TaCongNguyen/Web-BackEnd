<?php


use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;


require 'vendor/autoload.php';

$connection = mysqli_connect("localhost", "root", "", "music_db");
$email = $_POST["email"];

$sql = "SELECT * FROM users WHERE email = '$email'";
$result = mysqli_query($connection, $sql);
if (mysqli_num_rows($result) > 0)
{
	$reset_token = time() . md5($email);

	$sql = "UPDATE users SET reset_token='$reset_token' WHERE email='$email'";
	mysqli_query($connection, $sql);

	$message = "<p>Bạn đang thay đổi mật khẩu. Hãy click vào link dưới để xác nhận</p>";
	$message .= "<a href='https://localhost/music/Web-Backend/reset-password.php?email=$email&reset_token=$reset_token'>";
		$message .= "Reset password";
	$message .= "</a>";

	send_mail($email, "Reset password", $message);
}
else
{
	echo "Email does not exists";
}

function send_mail($to, $subject, $message)
{
	$mail = new PHPMailer(true);

	try {
	    //Server settings
	    $mail->SMTPDebug = 0;                                       // Enable verbose debug output
	    $mail->isSMTP();                                            // Set mailer to use SMTP
	    $mail->Host       = 'smtp.gmail.com;';  // Specify main and backup SMTP servers
	    $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
	    $mail->Username   = 'congnguyenta07102000@gmail.com';                     // SMTP username
	    $mail->Password   = 'Timcancoem0';                               // SMTP password
	    $mail->SMTPSecure = 'tls';                                  // Enable TLS encryption, `ssl` also accepted
	    $mail->Port       = 587;                                    // TCP port to connect to

	    $mail->setFrom('congnguyenta07102000@gmail.com', 'Admin GenMusic');
	    //Recipients
	    $mail->addAddress($to);

	    // Content
	    $mail->isHTML(true);                                  // Set email format to HTML
	    $mail->Subject = $subject;
	    $mail->Body    = $message;

	    $mail->send();
	    ?>
        
        <div class="container padding-bottom-3x mb-2 mt-5">
	    <div class="row justify-content-center">
	        <div class="col-lg-8 col-md-10">
	            <div class="forgot">
	                <h2>Một email xác nhận đã được gửi đến cho bạn</h2>
	                <p>Đổi mật khẩu của bạn nhanh chóng</p>
	                
	            </div>
	            
              <div class="row justify-content-center  mx-auto"><a href="login.php"><button class="btn btn-danger" type="submit">Về trang đăng nhập</button></a></div>
              
	        </div>
	    </div>
	</div>
        <?php
	} catch (Exception $e) {
	    echo "Đã có lỗi xảy ra. Mailer Error: {$mail->ErrorInfo}";
	}
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