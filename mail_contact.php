<?php
require_once("db_connect.php");
if((isset($_POST['name'])&& $_POST['name'] !='') && (isset($_POST['email'])&& $_POST['email'] !=''))
{
    
    $yourName = $conn->real_escape_string($_POST['name']);
    $yourEmail = $conn->real_escape_string($_POST['email']);
    $yourSubject = $conn->real_escape_string($_POST['subject']);
    $Comments = $conn->real_escape_string($_POST['comments']);
    $sql="INSERT INTO contact_form_info (name, email, subject, comments) VALUES ('".$yourName."','".$yourEmail."', '".$yourSubject."', '".$Comments."')";
    if(!$result = $conn->query($sql)){
        die('There was an error running the query [' . $conn->error . ']');
    }
    else
    {
        ?>
        
        <div class="jumbotron text-center">
        <h3 class="display-3">Cảm ơn đã liên hệ với chúng tôi!</h3>
        <p class="lead"><strong>Hãy kiểm tra email của bạn thường xuyên</strong> để xem phản hồi của chúng tôi.</p>
        <hr>
        <p>
            Có vấn đề khác? <a href="./index.php?page=contact"> Liên hệ chúng tôi</a>
        </p>
        <p class="lead">
            <a class="btn btn-primary " href="./index.php?page=home" role="button">Trở về trang chủ</a>
        </p>
        </div>
        <?php
        
    }
}
else
    {
        ?>
        
        <div class="jumbotron text-center">
        <h3 class="display-3">Có lỗi xảy ra</h3>
        <p class="lead"><strong>Bạn chưa điền thông tin</p>
        <hr>
        <p>
            Có vấn đề khác? <a href="./index.php?page=contact"> Liên hệ chúng tôi</a>
        </p>
        <p class="lead">
            <a class="btn btn-primary " href="./index.php?page=home" role="button">Trở về trang chủ</a>
        </p>
        </div>
        <?php
    }
/*
$toEmail = "connguyenta07102000@gmail.com";
$mailHeaders = "From: " . $_POST["name"] . "<". $_POST["email"] .">\r\n";
if(mail($toEmail, $_POST["comments"], $_POST["subject"], $mailHeaders)) {
echo"<p class='success'>Chúng tôi đã nhận được phản hồi của bạn.</p>";
} else {
echo"<p class='Error'>Đã có vấn đề xảy ra.</p>";
}
*/
?>
 <head>
	 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
