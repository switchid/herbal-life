@extends("layouts/app_layout")
@section("main")
    <div class="home">
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/contact.jpg" data-speed="0.8"></div>
        <div class="home_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="home_content">
                            <div class="home_title">Help</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Contact -->

    <div class="contact">
        <div class="container">
            <div class="row">

                <!-- contact info -->
                <div class="contact_info">
                    <div class="row">
                        <div class="col-lg-9 offset-lg-1">
                            <div class="contact_info_list">
                                <div class="contact_info_title">Tentang Aplikasi</div>
                                <div class="col-lg-12">
                                    Berikut Ini adalah aplikasi berbasis web dengan menggunakan framework laravel yang berisi cara pengobatan penyakit menggunakan tumbuhan herbal.
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-lg-3 offset-lg-1">
                            <div class="contact_info_list">
                                <div class="contact_info_title">Developed By</div>
                                <ul>
                                    <li><span>Nama : </span>Rizviadi Kris Artha</li>
                                    <li><span>NRP  : </span>2103177064</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="contact_info_list contact_info_list_2">
                                <ul>
                                    <li><span>Nama : </span>Slamet Surya Wardhana</li>
                                    <li><span>NRP  : </span>2103177067</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="contact_info_list contact_info_list_2">
                                <ul>
                                    <li><span>Nama : </span>Putri Eka Noviyanti</li>
                                    <li><span>NRP  : </span>2103177074</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Google Map -->

    <div class="contact_map">
        <!-- Google Map -->
        <div class="map">
            <div id="google_map" class="google_map">
                <div class="map_container">
                    <div id="map"></div>
                </div>
            </div>
        </div>
    </div>
@endsection