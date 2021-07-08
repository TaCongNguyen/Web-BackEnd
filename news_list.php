<?php include'db_connect.php' ?>
<style>
	.music-item:hover{
		background: rgb(110,109,109);
		background: radial-gradient(circle, rgba(110,109,109,1) 0%, rgba(55,54,54,1) 23%, rgba(28,27,27,1) 56%);
	}
</style>
<div class="col-lg-12">
	<div class="d-flex justify-content-between align-items-center w-100">
		<div class="form-group" style="width:calc(50%) ">
			<div class="input-group">
              <input type="search" id="filter" class="form-control form-control-sm" placeholder="Tìm tin tức theo từ khoá">
              <div class="input-group-append">
                  <button type="button" id="search" class="btn btn-sm btn-dark">
                      <i class="fa fa-search"></i>
                  </button>
              </div>
          </div>
		</div>
		
	</div>
	
	<div class="row" id="news-list">
		<?php 
			$musics= $conn->query("SELECT * FROM news  order by title asc") or die($conn->error);
			while($row=$musics->fetch_assoc()):
				$trans = get_html_translation_table(HTML_ENTITIES,ENT_QUOTES);
				unset($trans["\""], $trans["<"], $trans[">"], $trans["<h2"]);
				$desc = strtr(html_entity_decode($row['description']),$trans);
				$desc=str_replace(array("<li>","</li>"), array("",", "), $desc);
		?>
		<div class="card bg-black news-item my-2 mx-o rounded" data-id="<?php echo $row['id'] ?>"  style="width:100%;cursor:pointer;">
			<div class="card-img-top flex-w-100 position-relative py-2 px-3">
				<?php if($_SESSION['login_type'] == 1 || $_SESSION['login_id'] == $row['user_id']): ?>
                	<div class="dropdown position-absolute" style="right:.5em;top:.5em">
	                  <button type="button" class="btn btn-tool py-1" data-toggle="dropdown" title="Manage" style="background: #000000ab;z-index: 1">
	                    <i class="fa fa-ellipsis-v"></i>
	                  </button>
	                  <div class="dropdown-menu bg-dark">
              			<a class="dropdown-item bg-dark" data-id="<?php echo $row['id'] ?>" href="index.php?page=edit_news&id=<?php echo $row['id'] ?>">Sửa</a>
              			<a class="dropdown-item delete_news bg-dark" data-id="<?php echo $row['id'] ?>" href="javascript:void(0)">Xoá</a>
	                  </div>
	                  </div>
	              <?php endif; ?>
				<a href="index.php?page=view_news&id=<?php echo $row['id'] ?>">

				<img src="assets/uploads/<?php echo $row['cover_image'] ?>" class="card-img-top rounded"  style="object-fit: cover;max-width: 100%;height:26vh" alt="music Cover">
			</div>
			<div class="card-body border-top border-primary" style="min-height:20vh">
				<h5 class="card-title w-100"><?php echo ucwords($row['title']) ?></h5>
				<h6 class="card-subtitle mb-2 text-muted w-100">Tác giả: <?php echo ucwords($row['artist']) ?></h6>
				<p class="card-text truncate text-white"><small><?php echo strip_tags($desc) ?></small></p>
			</div>
		</a>
		</div>
		<?php endwhile; ?>
	</div>
</div>
<script>
	$(document).ready(function(){
		$('#list').dataTable()
	$('.delete_news').click(function(){
	_conf("Bạn có chắc muốn xoá ?","delete_news",[$(this).attr('data-id')])
	})
	$('#manage_music').click(function(){
		uni_modal("New music",'manage_music.php')
	})
	$('.edit_music').click(function(){
		uni_modal("New music",'manage_music.php?id='+$(this).attr('data-id'))
	})
	check_list()
	})
	function delete_news($id){
		start_load()
		$.ajax({
			url:'ajax.php?action=delete_news',
			method:'POST',
			data:{id:$id},
			success:function(resp){
				if(resp==1){
					alert_toast("Xoá thành công",'success')
					$('.modal').modal('hide')
					_redirect(document.href)
					end_load()

				}
			}
		})
	}
	function _filter(){
		var _ftxt = $('#filter').val().toLowerCase()
		$('.news-item').each(function(){
			var _content = $(this).text().toLowerCase()
			if(_content.includes(_ftxt) == true){
				$(this).toggle(true)
			}else{
				$(this).toggle(false)
			}
		})
		check_list()
	}
	function check_list(){
		var count = $('.news-item:visible').length
		if(count > 0){
			if($('#ns').length > 0)
				$('#ns').remove()
		}else{
			var ns = $('<div class="col-md-12 text-center text-white" id="ns"><b><i>No data to be display.</i></b></b></div>')
			$('#music-list').append(ns)
		}
	}
	$('#search').click(function(){
	    _filter()
	  })
	  $('#filter').on('keypress',function(e){
	    if(e.which ==13){
	    _filter()
	     return false; 
	    }
	  })
	  $('#filter').on('search', function () {
	      _filter()
	  })
	  
</script>