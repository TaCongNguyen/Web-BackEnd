<?php include('db_connect.php') ?>
      <style>
      .row{
        margin-top:12px;
      }
      </style>
      <!--Slide-->
      <div class="row">
        <div class="col-12 col-md-12 mx-auto">
          <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <a href="./index.php?page=playlist"><img class="d-block w-100 rounded" src="./assets/uploads/chillcungem.jpg" alt="First slide"></a>
              </div>
              <div class="carousel-item">
              <a href="./index.php?page=genre_list"><img class="d-block w-100 rounded" src="./assets/uploads/slide2.jpg" alt="Second slide"></a>
              </div>
              <div class="carousel-item">
              <a href="./index.php?page=music_list"><img class="d-block w-100 rounded" src="./assets/uploads/slide3.jpg" alt="Third slide"></a>
              </div>
            </div>
            
          </div>
        </div>
      </div>
      
      <div class="row">
        <div class="col-12 col-md-12 ">
          <span><h2 class="text-primary">Có thể bạn thích</h2></span>
        </div>
      </div>
      <!--Playlist -->
      <div class="row">
        <div class="col-12 col-md-12 ">
          <div class="row" id="playlist-list">
            <?php 
              $playlist= $conn->query("SELECT * FROM playlist order by title asc");
              while($row=$playlist->fetch_assoc()):
            ?>
            <div class="card bg-black playlist-item my-2 mx-0 rounded" date-id="<?php echo $row['id'] ?>" style="width:15vw">
              <div class="card-img-top flex-w-100 position-relative">
                <?php if($_SESSION['login_type'] == 1 || $_SESSION['login_id'] == $row['user_id'] ): ?>
                          <div class="dropdown position-absolute" style="right:.5em;top:.5em">
                            <button type="button" class="btn btn-tool py-1" data-toggle="dropdown" title="Manage" style="background: #000000ab;">
                              <i class="fa fa-ellipsis-v"></i>
                            </button>
                            <div class="dropdown-menu bg-dark">
                            <button class="dropdown-item manage_playlist bg-dark" data-id="<?php echo $row['id'] ?>" type="button">Quản lí danh sách</button>
                            <button class="dropdown-item edit_playlist bg-dark" data-id="<?php echo $row['id'] ?>" type="button">Sửa</button>
                            <button class="dropdown-item delete_playlist bg-dark" data-id="<?php echo $row['id'] ?>" type="button">Xoá</button>
                            </div>
                            </div>
                        <?php endif; ?>
            <a href="index.php?page=view_playlist&id=<?php echo $row['id'] ?>">
                <img src="assets/uploads/<?php echo $row['cover_image'] ?>" class="card-img-top rounded"  style="object-fit: cover;max-width: 100%;height:26vh" alt="playlist Cover">
              </div>
              <div class="card-body" style="height: 20vh">
                <div class="card-title"><?php echo ucwords($row['title']) ?></div>
                <p class="card-text truncate text-white"><?php echo $row['description'] ?></p>
              </div>
            </a>
            </div>
            <?php endwhile; ?>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-12 col-md-12 ">
        <div class="row" id="genre-list">
            <?php 
              $genres= $conn->query("SELECT * FROM genres order by genre asc");
              while($row=$genres->fetch_assoc()):
            ?>
            <div class="card bg-black genre-item my-2 mx-0 rounded" date-id="<?php echo $row['id'] ?>" style="width:15vw">
              <div class="card-img-top flex-w-100 position-relative">
                <?php if($_SESSION['login_type'] == 1): ?>
                          <div class="dropdown position-absolute" style="right:.5em;top:.5em">
                            <button type="button" class="btn btn-tool py-1" data-toggle="dropdown" title="Manage" style="background: #000000ab;">
                              <i class="fa fa-ellipsis-v"></i>
                            </button>
                            <div class="dropdown-menu bg-dark">
                            <button class="dropdown-item edit_genre bg-dark" data-id="<?php echo $row['id'] ?>" type="button">Sửa</button>
                            <button class="dropdown-item delete_genre bg-dark" data-id="<?php echo $row['id'] ?>" type="button">Xoá</button>
                            </div>
                            </div>
                        <?php endif; ?>
            <a href="index.php?page=view_genre&id=<?php echo $row['id'] ?>">
                <img src="assets/uploads/<?php echo $row['cover_photo'] ?>" class="card-img-top rounded"  style="object-fit: cover;max-width: 100%;height:26vh" alt="Genre Cover">
              </div>
              <div class="card-body" style="height: 20vh">
                <div class="card-title"><?php echo ucwords($row['genre']) ?></div>
                <p class="card-text truncate text-white"><?php echo $row['description'] ?></p>
              </div>
              </a>
            </div>
            <?php endwhile; ?>
	        </div>
        </div>
      </div>
<!-- Info boxes -->
        <div class="row">
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box bg-black border border-primary">
              <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-th-list text-gradient-primary"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Tổng thể loại</span>
                <span class="info-box-number">
                  <?php echo $conn->query("SELECT * FROM genres")->num_rows; ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
           <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box bg-black border border-primary">
              <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-music text-gradient-primary"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Tổng bài hát</span>
                <span class="info-box-number">
                  <?php echo $conn->query("SELECT * FROM uploads")->num_rows; ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box bg-black border border-primary">
              <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-list text-gradient-primary"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Tổng Playlist</span>
                <span class="info-box-number">
                  <?php echo $conn->query("SELECT * FROM playlist")->num_rows; ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box bg-black border border-primary">
              <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-users text-gradient-primary"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Tổng Người dùng</span>
                <span class="info-box-number">
                  <?php echo $conn->query("SELECT * FROM users where type = 2")->num_rows; ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box bg-black border border-primary">
              <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-music text-gradient-primary"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Nhạc của tôi</span>
                <span class="info-box-number">
                  <?php echo $conn->query("SELECT * FROM uploads where user_id ={$_SESSION['login_id']} ")->num_rows; ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box bg-black border border-primary">
              <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-list text-gradient-primary"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Playlist của tôi</span>
                <span class="info-box-number">
                  <?php echo $conn->query("SELECT * FROM playlist where user_id ={$_SESSION['login_id']}")->num_rows; ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          
      </div>
  

<script>
	$(document).ready(function(){
    $('.carousel').carousel({
  interval: 1200
})
  })
</script>

