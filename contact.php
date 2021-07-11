<?php include('db_connect.php') ?>

<style>
    section{
        color:white;
    }
    .contact_map
    {
        width: 100%;
    }
    .map
    {
        width: 100%;
    }
    .google_map
    {
        width: 100%;
        height: 685px;
    }
    .map_container
    {
        width: 100%;
        height: 100%;
        overflow: hidden;
    }
    #map
    {
        width: 100%;
        height: calc(100% + 30px);
    }
</style>
<section class="mb-4">

    <!--Section heading-->
    <h2 class="h1-responsive font-weight-bold text-center my-4">Liên hệ với chúng tôi</h2>
    <!--Section description-->
    <p class="text-center w-responsive mx-auto mb-5">Bạn có bất kì câu hỏi nào, hãy liên hệ và chúng tôi sẽ phản hồi.</p>

    <div class="row">

        <!--Grid column-->
        <div class="col-md-9 mb-md-0 mb-5">
            <form id="contact-form" name="contact-form" action="mail_contact.php" method="POST">

                <!--Grid row-->
                <div class="row">

                    <!--Grid column-->
                    <div class="col-md-6">
                        <div class="md-form mb-0">
                            <label for="name" class="">Tên</label>
                            <input type="text" id="name" name="name" class="form-control" required>
                            
                        </div>
                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-md-6">
                        <div class="md-form mb-0">
                            <label for="email" class="">Email</label>
                            <input type="text" id="email" name="email" class="form-control"  required>
                            
                        </div>
                    </div>
                    <!--Grid column-->

                </div>
                <!--Grid row-->

                <!--Grid row-->
                <div class="row">
                    <div class="col-md-12">
                        <div class="md-form mb-0">
                            <label for="subject" class="">Chủ đề</label>
                            <input type="text" id="subject" name="subject" class="form-control" required>
                            
                        </div>
                    </div>
                </div>
                <!--Grid row-->

                <!--Grid row-->
                <div class="row">

                    <!--Grid column-->
                    <div class="col-md-12">

                        <div class="md-form">
                            <label for="message">Nội dung</label>
                            <textarea type="text" id="comments" name="comments" rows="2" class="form-control md-textarea" required></textarea>
                            
                        </div>

                    </div>
                </div>
                <!--Grid row-->

            </form>

            <div class="text-center text-md-left">
                <a class="btn btn-primary" onclick="document.getElementById('contact-form').submit();">Send</a>
            </div>
            <div class="status"></div>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-md-3 text-center">
            <ul class="list-unstyled mb-0">
                <li><i class="fas fa-map-marker-alt fa-2x"></i>
                    <p>Đại học UIT, ĐHQG</p>
                </li>

                <li><i class="fas fa-phone mt-4 fa-2x"></i>
                    <p>+ 01 234 567 89</p>
                </li>

                <li><i class="fas fa-envelope mt-4 fa-2x"></i>
                    <p>genmusic@gmail.com</p>
                </li>
            </ul>
        </div>
        <!--Grid column-->

    </div>

</section>
<div class="row text-primary">
    <h2>Liên hệ trực tiếp chúng tôi tại đây.</h2>
</div>
<div class="row">
<div class="contact_map">

<!-- Google Map -->

<div class="map">
    <div id="google_map" class="google_map">
        <div class="map_container">
            <div id="map"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.232428814673!2d106.8016194147722!3d10.869918392258157!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317527587e9ad5bf%3A0xafa66f9c8be3c91!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjDtG5nIHRpbiDEkEhRRyBUUC5IQ00!5e0!3m2!1svi!2s!4v1608978724322!5m2!1svi!2s" width="1920" height="800" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></div>
        </div>
    </div>
</div>

</div>
</div>
