<?php if(!isset($conn)){ include 'db_connect.php'; } ?>

<div class="col-lg-12">
	<div class="card card-outline card-primary">
		<div class="card-body">
			<form action="" id="manage-news">

        <input type="hidden" name="id" value="<?php echo isset($id) ? $id : '' ?>">
        <div class="row">
          <div class="col-md-6">
            <div class="form-group text-dark">
              <label for="" class="control-label">Thể loại</label>
              <select name="genre_id" id="genre_id" class="form-control select2 text-dark">
                <option value=""></option>
                <?php
                  $genres = $conn->query("SELECT * FROM genres order by genre asc");
                  while($row = $genres->fetch_assoc()):
                ?>
                <option value="<?php echo $row['id'] ?>" <?php echo isset($genre_id) && $genre_id == $row['id'] ? 'selected' : '' ?>><?php echo ucwords($row['genre']) ?></option>
                <?php endwhile; ?>
              </select>
            </div>
          </div>
        </div>
				<div class="row">
					<div class="col-md-5">
						<div class="form-group">
							<label for="" class="control-label">Tên</label>
							<input type="text" class="form-control form-control-sm" name="title" value="<?php echo isset($mtitle) ? $mtitle : '' ?>">
						</div>
					</div>
          <div class="col-md-5">
            <div class="form-group">
              <label for="" class="control-label">Tác giả</label>
              <input type="text" class="form-control form-control-sm" name="artist" value="<?php echo isset($artist) ? $artist : '' ?>">
            </div>
          </div>
				</div>
				<div class="row">
					<div class="col-md-10">
						<div class="form-group">
							<label for="" class="control-label">Mô tả</label>
							<textarea name="description" id="" cols="30" rows="4" class="summernote form-control"><?php echo isset($description) ? $description : '' ?></textarea>
						</div>
					</div>
				</div>
        <div class="row">
          <div class="col-md-0">
            
          </div>
          <div class="col-md-10">
           <div class="form-group">
              <label for="" class="control-label">Ảnh đại diện</label>
                <div class="custom-file">
                  <input type="file" class="custom-file-input" id="customFile" name="cover" accept="image/*" onchange="displayImgCover(this,$(this))">
                  <label class="custom-file-label" for="customFile">Chọn file</label>
                </div>
            </div>
            <div class="form-group d-flex justify-content-center">
              <img src="assets/uploads/<?php echo isset($cover_image) ? $cover_image : '' ?>" alt="" id="cover" class="img-fluid img-thumbnail">
            </div>
          </div>
        </div>
        </form>
    	</div>
    	<div class="card-footer border-top border-info">
    		<div class="d-flex w-100 justify-content-center align-items-center">
    			<button class="btn btn-flat  bg-gradient-primary mx-2" form="manage-news">Lưu</button>
    			<button class="btn btn-flat bg-gradient-secondary mx-2" type="button">Huỷ</button>
    		</div>
    	</div>
	</div>
</div>
<script>
	$('#manage-news').submit(function(e){
		e.preventDefault()
		start_load()
		$.ajax({
			url:'ajax.php?action=save_news',
			data: new FormData($(this)[0]),
		    cache: false,
		    contentType: false,
		    processData: false,
		    method: 'POST',
		    type: 'POST',
			success:function(resp){
				if(resp == 1){
					alert_toast('Lưu thành công',"success");
					setTimeout(function(){
            end_load()
              _redirect('index.php?page=news_list')
					},2000)
				}
			}
		})
	})
  function displayImgCover(input,_this) {
      if (input.files && input.files[0]) {
          var reader = new FileReader();
          reader.onload = function (e) {
            $('#cover').attr('src', e.target.result);
          }

          reader.readAsDataURL(input.files[0]);
      }
  }
</script>