@extends("layouts/app_layout")
@section("main")

    <!-- Home -->

    <div class="home">
        <!-- <div class="background_image" style="background-image:url(images/about.jpg)"></div> -->
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="{{asset('/')}}images/bg-tea.jpg" data-speed="0.8"></div>

        <!-- Header -->

        <div class="home_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="home_content">
                            <div class="home_title">Herbal Life</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- About -->

    <div class="about">
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <div class="section_title">Herbal Life solusi untuk hidup lebih sehat</div>
                    <div class="section_subtitle">Hidup Akan Menjadi Lebih Berwarna</div>
                </div>
            </div>
            <div class="row about_row row-eq-height">
                <div class="col-lg-4">
                    <div class="logo">
                        <a href="#">Herbal Life<span>+</span></a>
                    </div>
                    <div class="about_text_highlight">Penyedia obat - obatan herbal dengan resep yang sudah dipakai oleh leluhur sejak dahulu kala.</div>
                    <div class="about_text">
                        <p>Obat - obatan dengan resep leluhur yang sudah di uji coba melalui tes lab dan melibatkan banyak sekali praktisi ahli pada bidang pengobatan.</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="about_text_2">
                        <p>Obat herbal adalah obat yang bersifat organik atau alami, sama seperti tubuh kita. Obat herbal murni diambil dari saripati tumbuhan yang mempunyai manfaat untuk pengobatan, tanpa ada campuran bahan kimia buatan (sintetis) dan tanpa campuran hewan.</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="about_image"><img src="images/obat-herbal.jpg" alt=""></div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="button about_button ml-auto mr-auto" style="width:204px;"><a href="#"><span>Hubungi Sekarang</span><span>Hubungi Sekarang</span></a></div>
                </div>
            </div>
        </div>
    </div>

    <!-- Milestones -->

    <div class="milestones">
        <div class="container">
            <div class="row">

                <!-- Milestone -->
                <div class="col-lg-3 milestone_col">
                    <div class="milestone d-flex flex-row align-items-center justify-content-start">
                        <div class="milestone_icon d-flex flex-column align-items-center justify-content-center"><img src="images/icon_7.svg" alt=""></div>
                        <div class="milestone_content">
                            <div class="milestone_counter" data-end-value="365">0</div>
                            <div class="milestone_text">Hari per Tahun</div>
                        </div>
                    </div>
                </div>

                <!-- Milestone -->
                <div class="col-lg-3 milestone_col">
                    <div class="milestone d-flex flex-row align-items-center justify-content-start">
                        <div class="milestone_icon d-flex flex-column align-items-center justify-content-center"><img src="images/icon_6.svg" alt=""></div>
                        <div class="milestone_content">
                            <div class="milestone_counter" data-end-value="25" data-sign-after="k">0</div>
                            <div class="milestone_text">Pasien per Tahun</div>
                        </div>
                    </div>
                </div>

                <!-- Milestone -->
                <div class="col-lg-3 milestone_col">
                    <div class="milestone d-flex flex-row align-items-center justify-content-start">
                        <div class="milestone_icon d-flex flex-column align-items-center justify-content-center"><img src="images/icon_8.svg" alt=""></div>
                        <div class="milestone_content">
                            <div class="milestone_counter" data-end-value="125">0</div>
                            <div class="milestone_text">Konsultan Hebat</div>
                        </div>

                    </div>
                </div>

                <!-- Milestone -->
                <div class="col-lg-3 milestone_col">
                    <div class="milestone d-flex flex-row align-items-center justify-content-start">
                        <div class="milestone_icon d-flex flex-column align-items-center justify-content-center"><img src="images/icon_9.svg" alt=""></div>
                        <div class="milestone_content">
                            <div class="milestone_counter" data-end-value="12" data-sign-after="k">0</div>
                            <div class="milestone_text">Hasil Tes Lab</div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>



@endsection