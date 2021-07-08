<?php
include 'db_connect.php';
$qry = $conn->query("SELECT * FROM news where id = ".$_GET['id'])->fetch_array();
foreach($qry as $k => $v){
	if($k=='title')
		$k = 'mtitle';
	$$k = $v;
}
include 'new_news.php';
?>