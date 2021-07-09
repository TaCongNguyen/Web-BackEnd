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
        
        <div class="container padding-bottom-3x mb-2 mt-5">
            <div class="row justify-content-center">
                <div class="col-lg-8 col-md-10">
                    <div class="forgot">
                        <h2>Cảm ơn đã phản hồi, chúng tôi sẽ xem xét yêu cầu của bạn</h2>
                    
                        
                    </div>
                    
                <div class="row justify-content-center  mx-auto"><a href="index.php?page=home"><button class="btn btn-danger" type="submit">Về trang chủ</button></a></div>
                
                </div>
            </div>
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