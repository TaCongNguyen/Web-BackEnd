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
        echo "Thank you! We will contact you soon";
    }
}
else
    {
    echo "Please fill Name and Email";
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