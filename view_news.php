<?php
include 'db_connect.php';
$qry = $conn->query("SELECT u.*,g.genre FROM news u inner join genres g on g.id = u.genre_id where u.id = ".$_GET['id'])->fetch_array();
foreach($qry as $k => $v){
	if($k=='title')
		$k = 'mtitle';
	$$k = $v;
}
?>
<div class="col-lg-12">
	
	<div class="row">
	<div class="col-md-10 mx-auto text-start">
	
			<div col-md-10>
				<h3 class="text-white">Tên <?php echo ucwords($mtitle); ?></h3>
				<h6 class="text-white">Tác giả: <?php echo ucwords($artist); ?></h6>
			</div>
		
			<h3 class="text-white  border-primary text-center"><b class="text-white ">NỘI DUNG</b></h3>
			<p class="border-bottom border-primary"></p>
			<div class=" row text-white text-start">
				<div class="col-md-9 mx-auto text-start"><?php echo html_entity_decode($description) ?></div>
			</div>
		</div>
	</div>
		
	
</div>