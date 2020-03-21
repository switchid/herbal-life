@extends("layouts/app_layout")
@section("main")
    <!-- Home -->
    <div class="home">
        <div class="background_image" style="background-image:url({{asset('/')}}images/home_page_slide.jpg)"></div>
        <div class="home_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="home_content">
                            <div class="home_title">Herbal Life solusi untuk hidup lebih sehat</div>
                            <div class="home_text">Obat - obatan herbal dengan resep yang sudah dipakai oleh leluhur sejak dahulu kala.</div>
                            <div class="button home_button"><a href="{{route('herbal-life')}}"><span>baca</span><span>baca</span></a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Services -->

    <div class="services">
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <div class="section_title">KENAPA OBAT HERBAL ?</div>
                    <div class="section_subtitle"></div>
                </div>
            </div>
            <div class="row icon_boxes_row">

                <!-- Icon Box -->
                <div class="col-xl-4 col-lg-6">
                    <div class="icon_box">
                        <div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
                            <div class="icon_box_icon"><img src="{{asset('/')}}images/icon_1.svg" alt=""></div>
                            <div class="icon_box_title">Cardiology</div>
                        </div>
                        <div class="icon_box_text">Tidak memiliki efek samping pada kesehatan jantung.</div>
                    </div>
                </div>

                <!-- Icon Box -->
                <div class="col-xl-4 col-lg-6">
                    <div class="icon_box">
                        <div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
                            <div class="icon_box_icon"><img src="{{asset('/')}}images/icon_2.svg" alt=""></div>
                            <div class="icon_box_title">Gastroenterology</div>
                        </div>
                        <div class="icon_box_text">Tidak memiliki efek samping pada kesehatan lambung.</div>
                    </div>
                </div>

                <!-- Icon Box -->
                <div class="col-xl-4 col-lg-6">
                    <div class="icon_box">
                        <div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
                            <div class="icon_box_icon"><img src="{{asset('/')}}images/icon_6.svg" alt=""></div>
                            <div class="icon_box_title">Neurology</div>
                        </div>
                        <div class="icon_box_text">Tidak memiliki efek samping pada kesehatan otak.</div>
                    </div>
                </div>

                <!-- Icon Box -->
                <div class="col-xl-4 col-lg-6">
                    <div class="icon_box">
                        <div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
                            <div class="icon_box_icon"><img src="{{asset('/')}}images/icon_3.svg" alt=""></div>
                            <div class="icon_box_title">Medical Lab</div>
                        </div>
                        <div class="icon_box_text">Sudah melalui berbagai tahap penelitian lab.</div>
                    </div>
                </div>

                <!-- Icon Box -->
                <div class="col-xl-4 col-lg-6">
                    <div class="icon_box">
                        <div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
                            <div class="icon_box_icon"><img src="{{asset('/')}}images/icon_9.svg" alt=""></div>
                            <div class="icon_box_title">Chemical</div>
                        </div>
                        <div class="icon_box_text">Tanpa menggunakan bahan kimia.</div>
                    </div>
                </div>

                <!-- Icon Box -->
                <div class="col-xl-4 col-lg-6">
                    <div class="icon_box">
                        <div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
                            <div class="icon_box_icon"><img src="{{asset('/')}}images/icon_5.svg" alt=""></div>
                            <div class="icon_box_title">Expired</div>
                        </div>
                        <div class="icon_box_text">Obat Herbal dapat bertahan hingga 1 tahun.</div>
                    </div>
                </div>


            </div>
          </div>
    </div>

    <!-- CTA -->
    <div class="cta">
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/cta_1.jpg" data-speed="0.8"></div>
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="cta_container d-flex flex-xl-row flex-column align-items-xl-start align-items-center justify-content-xl-start justify-content-center">
                        <div class="cta_content text-xl-left text-center">
                            <div class="cta_title">Konsultasikan Masalah Kesehatan Tubuh Anda</div>
                            <div class="cta_subtitle">Konsultasi Kesehatan Tubuh langsung dengan Ahli Pengobatan kami.</div>
                        </div>
                        <div class="button cta_button ml-xl-auto" style="width:204px;"><a href="#"><span>Hubungi Sekarang</span><span>Hubungi Sekarang</span></a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Departments -->

    <div class="departments">
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <div class="section_title">KATALOG OBAT</div>
                    <div class="section_subtitle"></div>
                </div>
            </div>
            <div class="row dept_row">
                <div class="col">
                    <div class="dept_slider_container_outer">
                        <div class="dept_slider_container">

                            <!-- Slider -->
                            <div class="owl-carousel owl-theme dept_slider">

                                @foreach($tumbuhan_obat as $item)
                                <!-- Slide -->
                                <div class="owl-item dept_item">
                                    <div class="dept_image"><img src="{{asset('/')}}{{!empty($item->path_gambar) ? $item->path_gambar : "images/404.png" }}" alt=""></div>
                                    <div class="dept_content">
                                        <div class="dept_title">{{$item->nama_tumbuhan}}</div>
                                        <div class="dept_link"><a href="#">Read More</a></div>
                                    </div>
                                </div>
                                @endforeach

                            </div>

                        </div>

                        <!-- Dept Slider Nav -->
                        <div class="dept_slider_nav"><i class="fa fa-chevron-right" aria-hidden="true"></i></div>

                    </div>

                </div>
            </div>
        </div>
    </div>

@endsection