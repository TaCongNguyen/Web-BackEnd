<?php include'db_connect.php' ?>
<div class="col-lg-12">
	<div class="card card-outline card-success">
		<div class="card-header">
			
		</div>
		<div class="card-body">
			<table class="table tabe-hover table-bordered" id="list">
				<thead>
					<tr>
						<th class="text-center">#</th>
						<th>Tên</th>
						<th>Email</th>
						<th>Chủ đề</th>
						<th>Nội dung phản hồi</th>
						<th>Hành động</th>
					</tr>
				</thead>
				<tbody>
					<?php
					$i = 1;
					$qry = $conn->query("SELECT * FROM contact_form_info");
					while($row= $qry->fetch_assoc()):
					?>
					<tr>
						<th class="text-center"><?php echo $i++ ?></th>
						<td><b><?php echo $row['name'] ?></b></td>
						<td><b><?php echo $row['email'] ?></b></td>
						<td><b><?php echo $row['subject'] ?></b></td>
						<td><b><?php echo $row['comments'] ?></b></td>
						<td class="text-center">
							<button type="button" class="btn btn-default btn-sm btn-flat border-info wave-effect text-info  delete_contact "  aria-expanded="true">
		                      Xoá
		                    </button>
		                    
						</td>
					</tr>	
				<?php endwhile; ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<script>
	$(document).ready(function(){
		$('#list').dataTable()
	
	$('.delete_contact').click(function(){
	_conf("Bạn có muốn xoá?","delete_contact",[$(this).attr('data-id')])
	})
	})
	function delete_contact($id){
		start_load()
		$.ajax({
			url:'ajax.php?action=delete_contact',
			method:'POST',
			data:{id:$id},
			success:function(resp){
				if(resp==1){
					alert_toast("Thành công",'success')
					setTimeout(function(){
						location.reload()
					},1500)

				}
			}
		})
	}
</script>