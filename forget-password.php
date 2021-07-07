<!doctype html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   
      <title>Lấy lại mật khẩu của bạn</title>
       <!-- CSS -->
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
       <style>
          body {
            background-position: center;
            background-color: #eee;
            background-repeat: no-repeat;
            background-size: cover;
            color: #505050;
            font-family: "Rubik", Helvetica, Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            line-height: 1.5;
            text-transform: none;
            background-image:url(./assets/uploads/background.jpg);
        }

        .forgot {
            background-color: #fff;
            padding: 12px;
            border: 1px solid #dfdfdf;
            border-radius: 10px;
        }

        .padding-bottom-3x {
            padding-bottom: 72px !important
        }

        .card-footer {
            background-color: #fff
        }

        .btn {
            font-size: 13px
        }

        .form-control:focus {
            color: #495057;
            background-color: #fff;
            border-color: #76b7e9;
            outline: 0;
            box-shadow: 0 0 0 0px #28a745
        }
        .mx-auto{
          margin-top: 20px;
        }
       </style>
   </head>
   <body>
   <div class="container padding-bottom-3x mb-2 mt-5">
	    <div class="row justify-content-center">
	        <div class="col-lg-8 col-md-10">
	            <div class="forgot">
	                <h2>Quên mật khẩu?</h2>
	                <p>Đổi mật khẩu của bạn chỉ với vài bước sau</p>
	                <ol class="list-unstyled">
	                    <li><span class="text-primary text-medium">1. </span>Điền email.</li>
	                    <li><span class="text-primary text-medium">2. </span>Nhận thông báo qua email.</li>
	                    <li><span class="text-primary text-medium">3. </span>Lấy link reset mật khẩu.</li>
	                </ol>
	            </div>
	            <form class="card mt-4" method="POST" action="send-recovery-mail.php">
	                <div class="card-body">
	                    <div class="form-group"> <label for="email">Điền email</label> <input type="email" name="email" class="form-control" id="email" aria-describedby="emailHelp" required=""><small class="form-text text-muted">Chúng tôi đảo bảo riêng tư cho email của bạn</small> </div>
	                </div>
	                <div class="card-footer"> <button class="btn btn-success" name="password-reset-token" type="submit">Lấy mật khẩu</button></div>
	            </form>
              <div class="row justify-content-center  mx-auto"><a href="login.php"><button class="btn btn-danger" type="submit">Về trang đăng nhập</button></a></div>
              
	        </div>
	    </div>
	</div>
 
   </body>
</html>