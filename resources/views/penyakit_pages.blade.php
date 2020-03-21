@extends("layouts/app_layout")
@section("main")
    <!-- Home -->

    <div class="home">
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="{{asset('/')}}images/bg-clover.jpg"
             data-speed="0.8"></div>

        <!-- Header -->

        <div class="home_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="home_content">
                            <div class="home_title">Katalog Penyakit</div>
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
                        @if(!empty($penyakit))
                            @if($penyakit->count() > 0)
                                @foreach($penyakit as $item)
                                    <div class="news_post bg-light pb-4 pt-4">
                                        <div class="news_post_content ml-4 mr-4 pt-0">
                                            <div class="news_post_title mt-0"><a href="#">{{$item->nama_penyakit}}</a>
                                            </div>
                                            <div class="news_post_info">
                                                <ul class="d-flex flex-row justify-content-start">
                                                    <li>Bahan</li>
                                                    <li>:</li>
                                                    <li>{{$item->bahan_obat}}</li>
                                                </ul>
                                            </div>
                                            <div class="news_post_text">
                                                <p>{{$item->tutorial}}</p>
                                            </div>
                                            <div class="button news_post_button"><a
                                                        href="{{route('katalog-obat')}}"><span>Lihat Obat</span><span>Lihat Obat</span></a>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach

                                {{ $penyakit->onEachSide(5)->links() }}

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
                            <form action="{{route('penyakit.cari')}}" id="sidebar_search" class="sidebar_search">
                                <input type="text" class="sidebar_search_input" name="cari_penyakit"
                                       placeholder="Search" required="required">
                                <button class="sidebar_search_button"><i class="fa fa-search" aria-hidden="true"></i>
                                </button>
                            </form>
                        </div>

                        <!-- Latest News -->
                        <div class="sidebar_latest">
                            <div class="sidebar_title">Katalog Terbaru</div>
                            <div class="sidebar_latest_container">
                                @foreach($penyakit_baru as $item)

                                    <div class="latest d-flex flex-row align-items-start justify-content-start">
                                        <div class="latest_content">
                                            <div class="latest_title font-weight-bold"><a
                                                        href="#">{{$item->nama_penyakit}}</a></div>
                                            <div class="latest_info">
                                                <ul class="d-flex flex-row align-items-start justify-content-start">
                                                    <li>Bahan</li>
                                                    <li>:</li>
                                                    <li>{{$item->bahan_obat}}</li>
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