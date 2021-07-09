  <aside class="main-sidebar sidebar-dark-navy bg-black elevation-4">
    <div class="dropdown">
   	<a href="javascript:void(0)" class="brand-link bg-black" data-toggle="dropdown" aria-expanded="true">
        <span class="brand-image img-circle elevation-3 d-flex justify-content-center align-items-center text-white font-weight-500" style="width: 38px;height:50px;font-size: 2rem"><b><i class="fa fa-headphones-alt text-gradient-primary"></i></b></span>
        <span class="brand-text font-weight-light  text-gradient-primary"><i>GenMusic</i></span>

      </a>
      <div class="dropdown-menu" style="">
        <a class="dropdown-item manage_account" href="javascript:void(0)" data-id="<?php echo $_SESSION['login_id'] ?>">Quản lí </a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item" href="ajax.php?action=logout">Đăng xuất</a>
      </div>
    </div>
    <div class="sidebar">
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column nav-flat" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item dropdown">
            <a href="./index.php?page=home" class="nav-link nav-home">
              <i class="nav-icon fas fa-home text-gradient-primary"></i>
              <p>
                Trang chủ
              </p>
            </a>
          </li>    
          <li class="nav-item">
            <a href="#" class="nav-link nav-is-tree nav-edit_music nav-view_music">
              <i class="nav-icon fa fa-music text-gradient-primary"></i>
              <p>
                Bài hát
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
            <?php if($_SESSION['login_type'] == 1): ?>
              <li class="nav-item">
              <a href="./index.php?page=new_music" class=" ml-1 nav-link nav-new_music tree-item">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p class="">Thêm mới bài hát</p>
                </a>
              </li> 
            <?php endif; ?>
              
              <li class="nav-item">
                <a href="./index.php?page=music_list" class=" ml-1 nav-link nav-music_list tree-item">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p class="">Danh sách bài hát</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link nav-is-tree nav-edit_news nav-view_news">
              <i class="nav-icon fas fa-newspaper text-gradient-primary"></i>
              <p>
                Tin tức âm nhạc
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
            <?php if($_SESSION['login_type'] == 1): ?>
              <li class="nav-item">
              <a href="./index.php?page=new_news" class=" ml-1 nav-link nav-new_news tree-item">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p class="">Thêm mới tin tức</p>
                </a>
              </li> 
            <?php endif; ?>
              
              <li class="nav-item">
                <a href="./index.php?page=news_list" class=" ml-1 nav-link nav-news_list tree-item">
                  <i class="fas fa-angle-right nav-icon"></i>
                  <p class="">Danh sách tin tức</p>
                </a>
              </li>
            </ul>
          </li>
         
          <li class="nav-item">
                <a href="./index.php?page=playlist" class="nav-link nav-playlist tree-item">
                  <i class="fas fa-list nav-icon  text-gradient-primary"></i>
                  <p>Playlist</p>
                </a>
          </li> 
          <li class="nav-item">
                <a href="./index.php?page=genre_list" class="nav-link nav-genre_list tree-item">
                  <i class="fas fa-th-list nav-icon  text-gradient-primary"></i>
                  <p>Thể loại</p>
                </a>
          </li>  
          <?php if($_SESSION['login_type'] != 1): ?>
          <li class="nav-item">
                <a href="./index.php?page=contact" class="nav-link nav-contact tree-item">
                  <i class="fas fa-users nav-icon  text-gradient-primary"></i>
                  <p>Liên hệ</p>
                </a>
          </li> 
          <?php endif; ?>

          <?php if($_SESSION['login_type'] == 1): ?>
          <li class="nav-item">
                <a href="./index.php?page=contact_list" class="nav-link nav-contact_list tree-item">
                  <i class="fas fa-comment-dots nav-icon  text-gradient-primary"></i>
                  <p>Quản lí phản hồi</p>
                </a>
          </li> 
          <?php endif; ?>

          <?php if($_SESSION['login_type'] == 1): ?>
          <li class="nav-item">
                <a href="./index.php?page=user_list" class="nav-link nav-user_list tree-item">
                  <i class="fas fa-users nav-icon  text-gradient-primary"></i>
                  <p>Người dùng</p>
                </a>
          </li> 
          <?php endif; ?>
        </ul>
      </nav>
    </div>
  </aside>
  <script>
  	$(document).ready(function(){
  		var page = '<?php echo isset($_GET['page']) ? $_GET['page'] : 'home' ?>';
  		if($('.nav-link.nav-'+page).length > 0){
  			$('.nav-link.nav-'+page).addClass('active')
          console.log($('.nav-link.nav-'+page).hasClass('tree-item'))
  			if($('.nav-link.nav-'+page).hasClass('tree-item') == true){
          $('.nav-link.nav-'+page).closest('.nav-treeview').siblings('a').addClass('active')
  				$('.nav-link.nav-'+page).closest('.nav-treeview').parent().addClass('menu-open')
  			}
        if($('.nav-link.nav-'+page).hasClass('nav-is-tree') == true){
          $('.nav-link.nav-'+page).parent().addClass('menu-open')
        }

  		}
      $('.manage_account').click(function(){
        uni_modal('Manage Account','manage_user.php?id='+$(this).attr('data-id'))
      })
  	})
  </script>