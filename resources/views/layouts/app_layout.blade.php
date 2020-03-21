<!DOCTYPE html>
<html lang="en">
<head>
    <title>Herbal Life &mdash; {{$title}}</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Health medical template project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}styles/bootstrap4/bootstrap.min.css">
    <link href="{{asset('/')}}plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}plugins/OwlCarousel2-2.2.1/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}plugins/OwlCarousel2-2.2.1/animate.css">

    @if(empty(request()->segment(1)))
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}styles/main_styles.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}styles/responsive.css">
    @endif

    @if(request()->segment(1) === 'tentang-herbal-life')
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}styles/about.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}styles/about_responsive.css">
    @endif

    @if(request()->segment(1) === 'katalog-obat' || request()->segment(1) === 'penyakit')
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}styles/news.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}styles/news_responsive.css">
    @endif

    @if(request()->segment(1) === 'help')
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}styles/contact.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}styles/contact_responsive.css">
    @endif
</head>
<body>

<div class="super_container">

    <!-- Menu -->

    <div class="menu trans_500">
        <div class="menu_content d-flex flex-column align-items-center justify-content-center text-center">
            <div class="menu_close_container"><div class="menu_close"></div></div>
            <form action="{{route('penyakit.cari')}}" class="menu_search_form">
                <input type="text" class="menu_search_input" name="cari_penyakit" placeholder="Cari Penyakit" required="required">
                <button class="menu_search_button"><i class="fa fa-search" aria-hidden="true"></i></button>
            </form>
            <ul>
                <li class="menu_item"><a href="{{route('beranda')}}">Home</a></li>
                <li class="menu_item"><a href="#">About us</a></li>
                <li class="menu_item"><a href="#">Services</a></li>
                <li class="menu_item"><a href="news.html">News</a></li>
                <li class="menu_item"><a href="contact.html">Contact</a></li>
            </ul>
        </div>
        <div class="menu_social">
            <ul>
                <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
            </ul>
        </div>
    </div>

    <!-- Header -->
    <header class="header" id="header">
        <div>
            <div class="header_top">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="header_top_content d-flex flex-row align-items-center justify-content-start">
                                <div class="logo">
                                    <a href="{{route('beranda')}}">Herbal Life<span>+</span></a>
                                </div>
                                <div class="header_top_extra d-flex flex-row align-items-center justify-content-start ml-auto invisible" >
                                    <div class="header_top_nav">
                                        <ul class="d-flex flex-row align-items-center justify-content-start">
                                            <li><a href="#">Help Desk</a></li>
                                            <li><a href="#">Emergency Services</a></li>
                                            <li><a href="#">Appointment</a></li>
                                        </ul>
                                    </div>
                                    <div class="header_top_phone">
                                        <i class="fa fa-phone" aria-hidden="true"></i>
                                        <span>+34 586 778 8892</span>
                                    </div>
                                </div>
                                <div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header_nav" id="header_nav_pin">
                <div class="header_nav_inner">
                    <div class="header_nav_container">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <div class="header_nav_content d-flex flex-row align-items-center justify-content-start">
                                        <nav class="main_nav">
                                            <ul class="d-flex flex-row align-items-center justify-content-start">
                                                <li class="{{ empty(request()->segment(1)) ? "active" : ""}}"><a href="{{route('beranda')}}">Beranda</a></li>
                                                <li class="{{ request()->segment(1) === 'tentang-herbal-life' ? "active" : ""}}"><a href="{{route('herbal-life')}}">Herbal Life</a></li>
                                                <li class="{{ request()->segment(1) === 'katalog-obat' ? "active" : ""}}"><a href="{{route('katalog-obat')}}">Katalog Obat</a></li>
                                                <li class="{{ request()->segment(1) === 'penyakit' ? "active" : ""}}"><a href="{{route('penyakit')}}">Penyakit</a></li>
                                                <li class="{{ request()->segment(1) === 'help' ? "active" : ""}}"><a href="{{route('help')}}">Help</a></li>
                                            </ul>
                                        </nav>
                                        <div class="search_content d-flex flex-row align-items-center justify-content-end ml-auto">
                                            <form action="{{route('penyakit.cari')}}" id="search_container_form" class="search_container_form">
                                                <input type="text" class="search_container_input" name="cari_penyakit" placeholder="Cari Penyakit" required="required">
                                                <button class="search_container_button"><i class="fa fa-search" aria-hidden="true"></i></button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    @yield('main')

    <!-- Footer -->

    <footer class="footer">
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="{{asset('/')}}images/food-on-white-background-256318.jpg" data-speed="0.8"></div>
        <div class="footer_content">
            <div class="container">
                <div class="row">

                    <!-- Footer About -->
                    <div class="col-lg-3 footer_col">
                        <div class="footer_about">
                            <div class="logo">
                                <a href="#">Herbal Life<span>+</span></a>
                            </div>
                            <div class="footer_about_text">Penyedia obat - obatan herbal dengan resep yang sudah dipakai oleh leluhur sejak dahulu kala.</div>
                            <div class="footer_social">
                                <ul class="d-flex flex-row align-items-center justify-content-start">
                                    <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                            <div class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            </div>
                        </div>
                    </div>

                    <!-- Footer Contact -->
                    <div class="col-lg-5 footer_col">
                        <div class="footer_contact">
                            <div class="footer_contact_title">HUBUNGI KAMI</div>
                            <div class="footer_contact_form_container">
                                <form action="#" class="footer_contact_form" id="footer_contact_form">
                                    <div class="d-flex flex-xl-row flex-column align-items-center justify-content-between">
                                        <input type="text" class="footer_contact_input" placeholder="Nama" required="required">
                                        <input type="email" class="footer_contact_input" placeholder="E-mail" required="required">
                                    </div>
                                    <textarea class="footer_contact_input footer_contact_textarea" placeholder="Pesan" required="required"></textarea>
                                    <button class="footer_contact_button">kirim pesan</button>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- Footer Hours -->
                    <div class="col-lg-4 footer_col">
                        <div class="footer_hours">
                            <div class="footer_hours_title">JADWAL KONSULTASI</div>
                            <ul class="hours_list">
                                <li class="d-flex flex-row align-items-center justify-content-start">
                                    <div>Senin – Kamis</div>
                                    <div class="ml-auto">8.00 – 19.00</div>
                                </li>
                                <li class="d-flex flex-row align-items-center justify-content-start">
                                    <div>Jum'at</div>
                                    <div class="ml-auto">8.00 - 18.30</div>
                                </li>
                                <li class="d-flex flex-row align-items-center justify-content-start">
                                    <div>Sabtu</div>
                                    <div class="ml-auto">8.00 – 12.00</div>
                                </li>
                                <li class="d-flex flex-row align-items-center justify-content-start">
                                    <div>Ahad</div>
                                    <div class="ml-auto text-center">-</div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer_bar">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="footer_bar_content d-flex flex-sm-row flex-column align-items-lg-center align-items-start justify-content-start">
                            <nav class="footer_nav">
                                <ul class="d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-start">
                                    <li class="{{ empty(request()->segment(1)) ? "active" : ""}}"><a href="{{route('beranda')}}">Beranda</a></li>
                                    <li class="{{ request()->segment(1) === 'tentang-herbal-life' ? "active" : ""}}"><a href="{{route('herbal-life')}}">Herbal Life</a></li>
                                    <li class="{{ request()->segment(1) === 'katalog-obat' ? "active" : ""}}"><a href="{{route('katalog-obat')}}">Katalog Obat</a></li>
                                    <li class="{{ request()->segment(1) === 'penyakit' ? "active" : ""}}"><a href="{{route('penyakit')}}">Penyakit</a></li>
                                    <li class="{{ request()->segment(1) === 'help' ? "active" : ""}}"><a href="{{route('help')}}">Help</a></li>
                                </ul>
                            </nav>
                            <div class="footer_links invisible">
                                <ul class="d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-start">
                                    <li><a href="#">Help Desk</a></li>
                                    <li><a href="#">Emergency Services</a></li>
                                    <li><a href="#">Appointment</a></li>
                                </ul>
                            </div>
                            <div class="footer_phone ml-lg-auto invisible">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                                <span>+34 586 778 8892</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>

<script src="{{asset('/')}}js/jquery-3.3.1.min.js"></script>
<script src="{{asset('/')}}styles/bootstrap4/popper.js"></script>
<script src="{{asset('/')}}styles/bootstrap4/bootstrap.min.js"></script>
<script src="{{asset('/')}}plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="{{asset('/')}}plugins/easing/easing.js"></script>
<script src="{{asset('/')}}plugins/parallax-js-master/parallax.min.js"></script>

@if(request()->segment(1) === 'tentang-herbal-life' || request()->segment(1) === 'katalog-obat' || request()->segment(1) === 'penyakit' )
<script src="{{asset('/')}}plugins/greensock/TweenMax.min.js"></script>
<script src="{{asset('/')}}plugins/greensock/TimelineMax.min.js"></script>
<script src="{{asset('/')}}plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="{{asset('/')}}plugins/greensock/animation.gsap.min.js"></script>
@endif

@if(empty(request()->segment(1)))
<script src="{{asset('/')}}js/custom.js"></script>
@endif

@if(request()->segment(1) === 'tentang-herbal-life')
<script src="{{asset('/')}}js/about.js"></script>
@endif

@if(request()->segment(1) === 'katalog-obat' || request()->segment(1) === 'penyakit')
<script src="{{asset('/')}}js/news.js"></script>
@endif

@if(request()->segment(1) === 'help')
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="{{asset('/')}}js/contact.js"></script>
@endif
</body>
</html>