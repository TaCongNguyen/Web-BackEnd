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

