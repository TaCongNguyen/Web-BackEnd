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
	    echo 'Một email xác nhận đã được gửi tới cho bạn';
	} catch (Exception $e) {
	    echo "Đã có lỗi xảy ra. Mailer Error: {$mail->ErrorInfo}";
	}
}
?>