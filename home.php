<?php include('db_connect.php') ?>
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
  <div class="row">
  <div class="col-12 col-md-12 mx-auto">
    <h2 class="text-primary">Có gì để nghe</h2>
  </div>
  </div>
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

<script>
	$(document).ready(function(){
    $('.carousel').carousel({
  interval: 1200
})
  })
</script>

