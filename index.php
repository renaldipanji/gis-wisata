<?php

include 'functions.php';
/*if(empty($_SESSION['user']))
    header("location:login.php");*/
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Sistem Informasi Geografis Parawisata Kota Bangun 2024</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="assets/css2/styles.css" rel="stylesheet" />
        <script src="assets/js/jquery.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD7f9I2-5LC7b_ZLNMwX4sva-vkB72XBFE"></script>
        <script>
        var default_lat = <?=get_option('default_lat')?>; 
        var default_lng = <?=get_option('default_lng')?>;
        var default_zoom = <?=get_option('default_zoom')?>;
    </script>
    <script src="assets/js/script.js"></script>
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ms-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#services">Informasi</a></li>
                        <li class="nav-item"><a class="nav-link" href="#portfolio">Tempat Wisata</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                        <li class="nav-item"><a class="nav-link" href="login.php">Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container">
                <div class="masthead-subheading">Sistem Informasi Geografis Parawisata</div>
                <div class="masthead-heading text-uppercase">Kota Bangun</div>
                <a class="btn btn-primary btn-xl text-uppercase" href="#portfolio">Lihat Lebih</a>
            </div>
        </header>
        <!-- Services-->
        <section class="page-section" id="services">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Informasi</h2>
                    <h3 class="section-subheading text-muted" style="line-height:2">Sistem Informasi Geografis (bahasa Inggris: Geographic Information System disingkat GIS) adalah sistem informasi khusus yang mengelola data yang memiliki informasi spasial (bereferensi keruangan). Atau dalam arti yang lebih sempit, adalah sistem komputer yang memiliki kemampuan untuk membangun, menyimpan, mengelola dan menampilkan informasi berefrensi geografis, misalnya data yang diidentifikasi menurut lokasinya, dalam sebuah database. Para praktisi juga memasukkan orang yang membangun dan mengoperasikannya dan data sebagai bagian dari sistem ini.                    </h3>
                    <h3 class="section-subheading text-muted" style="line-height:2">Sistem Informasi Geografis Parawisata Kota Bangun Kabupaten Kutai Kartanegara merupakan sistem yang mengelolah tentang informasi geografis parawisata yang tedapat di Kota Bangun Kabupaten Kutai Kartanegara. Sistem ini menjelaskan tentang penyebaran letak letak parawisata pada Kota Bangun Kabupaten Kutai Kartanegara, di sertakan dengan galery tentang beberapa parawisata tersebut.                    </h3>
                </div>
            </div>
        </section>
        <!-- Portfolio Grid-->
        <section class="page-section bg-light" id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Tempat Wisata</h2>
                    <h3 class="section-subheading text-muted">Beragam Wisata yang ada di Kota Bangun</h3>
                </div>
                <div class="row mb-5">
                    <div id="map" style="height: 500px;"></div>
                        <script>
                        function tampilDekat(){
                            getCurLocation();
                            
                            map_dekat = new google.maps.Map(document.getElementById('map'), {
                                zoom: 7, // Ganti dengan nilai zoom yang sesuai
                                center: {
                                    lat: -0.7414, // Latitude Kalimantan Timur
                                    lng: 116.4194 // Longitude Kalimantan Timur
                                }
                            });
                            
                            var data =  <?=json_encode($db->get_results("SELECT * FROM tb_tempat"))?>;
                            $.each(data, function(k, v){
                                var pos = {
                                    lat : parseFloat(v.lat),
                                    lng : parseFloat(v.lng)
                                };
                                var contentString = '<h3>'  + v.nama_tempat + '</h3>' + 
                                    '<p align="center"><a href="index2.php?m=tempat_detail&ID=' + v.id_tempat + '" class="link_detail btn btn-primary">Lihat Detail</a>';
                                var infowindow = new google.maps.InfoWindow({
                                    content: contentString
                                });
                                var marker = new google.maps.Marker({
                                    position: pos,
                                    map: map_dekat,
                                    animation: google.maps.Animation.DROP
                                });         
                                marker.addListener('click', function() {
                                    infowindow.open(map_dekat, marker);
                                });
                            });    
                        }  

                        $(function(){
                            tampilDekat();
                        })
                        </script>
                </div>
                <div class="row">
                <?php
        $sql = "SELECT * 
            FROM tb_tempat p";
        $rows = $db->get_results($sql);
        
        foreach($rows as $row):?>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 1-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal<?=$row->id_tempat?>">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" style="width:100%;" src="assets/images/tempat/small_<?=$row->gambar?>" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Wisata</div>
                                <div class="portfolio-caption-subheading text-muted"><?=$row->nama_tempat?></div>
                            </div>
                        </div>
                    </div>
                    <?php endforeach;    ?>

                </div>
            </div>
        </section>
        <!-- Contact-->
        <section class="page-section" id="contact">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Kontak Kami</h2>
                    <h3 class="section-subheading text-muted">Kontak kami jika ada informasi yang kurang tepat</h3>
                </div>
                <!-- * * * * * * * * * * * * * * *-->
                <!-- * * SB Forms Contact Form * *-->
                <!-- * * * * * * * * * * * * * * *-->
                <!-- This form is pre-integrated with SB Forms.-->
                <!-- To make this form functional, sign up at-->
                <!-- https://startbootstrap.com/solution/contact-forms-->
                <!-- to get an API token!-->
                <form id="contactForm" data-sb-form-api-token="API_TOKEN">
                    <div class="row align-items-stretch mb-5">
                        <div class="col-md-6">
                            <div class="form-group">
                                <!-- Name input-->
                                <input class="form-control" id="name" type="text" placeholder="Your Name *" data-sb-validations="required" />
                                <div class="invalid-feedback" data-sb-feedback="name:required">A name is required.</div>
                            </div>
                            <div class="form-group">
                                <!-- Email address input-->
                                <input class="form-control" id="email" type="email" placeholder="Your Email *" data-sb-validations="required,email" />
                                <div class="invalid-feedback" data-sb-feedback="email:required">An email is required.</div>
                                <div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div>
                            </div>
                            <div class="form-group mb-md-0">
                                <!-- Phone number input-->
                                <input class="form-control" id="phone" type="tel" placeholder="Your Phone *" data-sb-validations="required" />
                                <div class="invalid-feedback" data-sb-feedback="phone:required">A phone number is required.</div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group form-group-textarea mb-md-0">
                                <!-- Message input-->
                                <textarea class="form-control" id="message" placeholder="Your Message *" data-sb-validations="required"></textarea>
                                <div class="invalid-feedback" data-sb-feedback="message:required">A message is required.</div>
                            </div>
                        </div>
                    </div>
                    <!-- Submit success message-->
                    <!---->
                    <!-- This is what your users will see when the form-->
                    <!-- has successfully submitted-->
                    <div class="d-none" id="submitSuccessMessage">
                        <div class="text-center text-white mb-3">
                            <div class="fw-bolder">Form submission successful!</div>
                            To activate this form, sign up at
                            <br />
                            <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                        </div>
                    </div>
                    <!-- Submit error message-->
                    <!---->
                    <!-- This is what your users will see when there is-->
                    <!-- an error submitting the form-->
                    <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
                    <!-- Submit Button-->
                    <div class="text-center"><button class="btn btn-primary btn-xl text-uppercase disabled" id="submitButton" type="submit">Kirim Pesan</button></div>
                </form>
            </div>
        </section>
        <!-- Footer-->
        <footer class="footer py-4">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-12 my-3 my-lg-0">Copyright &copy; Sistem Informasi Geografis Parawisata Kota Bangun 2024</div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Portfolio Modals-->
        <?php
        $sql = "SELECT * 
            FROM tb_tempat p";
        $rows = $db->get_results($sql);
        
        foreach($rows as $row):?>
        <!-- Portfolio item 1 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal<?=$row->id_tempat?>" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase"><?=$row->nama_tempat?></h2>
                                    <p class="item-intro text-muted"><?=$row->lokasi?></p>
                                    <!-- img/portofolio/1.jpg -->
                                    <img class="img-fluid d-block mx-auto" style="width:100%" src="assets/images/tempat/<?=$row->gambar?>" alt="..." />
                                    <!-- <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/1.jpg" alt="..." /> -->
                                    <p><?=$row->keterangan?></p>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Tutup Wisata
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php endforeach;    ?>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="assets/js2/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>
