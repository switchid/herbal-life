@extends("layouts/app_layout")
@section("main")
    <!-- Home -->

    <div class="home">
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="{{asset('/')}}images/bg-alang-alang.jpg" data-speed="0.8"></div>

        <!-- Header -->

        <div class="home_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="home_content">
                            <div class="home_title">Katalog Obat</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- News -->

    <div class="news">
        <div class="container">
            <div class="row">

                <div class="col-lg-8">
                    <div class="news_posts">
                    @if(!empty($obat))
                        @if($obat->count() > 0)
                        @foreach($obat as $item)
                        <div class="news_post bg-light pb-4 pt-4">
                            <div class="news_post_image ml-3 pt-0"><img src="{{asset('/')}}{{!empty($item->path_gambar) ? $item->path_gambar : "images/404.png"}}" alt=""></div>
                            <div class="news_post_content ml-4 mr-4 pt-0">
                                <div class="news_post_date"><a href="#">17 April, 2018</a></div>
                                <div class="news_post_title"><a href="#">{{$item->nama_tumbuhan}}</a></div>
                                <div class="news_post_info">
                                    <ul class="d-flex flex-row align-items-center justify-content-start">
                                        <li><a href="#">by Admin</a></li>
                                        <li><a href="#">April 25, 2018</a></li>
                                    </ul>
                                </div>
                                <div class="news_post_text">
                                    <p>{{$item->kegunaan}}</p>
                                </div>
                                <div class="button news_post_button"><a href="#"><span>read more</span><span>read more</span></a></div>
                            </div>
                        </div>
                        @endforeach

                            {{ $obat->onEachSide(5)->links() }}
                            @else
                                <div class="col-lg-12 news_post bg-light pt-3 pb-3">
                                    <div class="text-center">
                                        <div class="text-secondary">Data Tidak Ditemukan</div>
                                    </div>
                                </div>
                            @endif
                        @endif
                    </div>
                </div>

                <!-- Sidebar -->
                <div class="col-lg-4">
                    <div class="news_sidebar">

                        <!-- Search -->
                        <div class="sidebar_search">
                            <form action="{{route('katalog-obat.cari')}}" id="sidebar_search" class="sidebar_search">
                                <input type="text" class="sidebar_search_input" name="cari_obat" placeholder="Search" required="required">
                                <button class="sidebar_search_button"><i class="fa fa-search" aria-hidden="true"></i></button>
                            </form>
                        </div>

                        <!-- Latest News -->
                        <div class="sidebar_latest">
                            <div class="sidebar_title">Katalog Terbaru</div>
                            <div class="sidebar_latest_container">
                            @foreach($obat_baru as $item)

                                <div class="latest d-flex flex-row align-items-start justify-content-start">
                                    <div><div class="latest_image"><img src="{{asset('/')}}{{!empty($item->path_gambar) ? $item->path_gambar : "images/404.png"}}" alt=""></div></div>
                                    <div class="latest_content">
                                        <div class="latest_title"><a href="#">{{$item->nama_tumbuhan}}</a></div>
                                        <div class="latest_info">
                                            <ul class="d-flex flex-row align-items-start justify-content-start">
                                                <li><a href="#">by Admin</a></li>
                                                <li><a href="#">April 25, 2018</a></li>
                                            </ul>
                                        </div>
                                        {{--<div class="latest_comments"><a href="#">2 Comments</a></div>--}}
                                    </div>
                                </div>
                            @endforeach

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection