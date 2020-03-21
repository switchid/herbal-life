<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*Route::get('/', function () {
    return view('home_pages');
});*/

Route::get('/','BerandaController@index')->name('beranda');

Route::get('/tentang-herbal-life','HerbalLifeController@index')->name('herbal-life');

Route::get('/katalog-obat','KatalogObatController@index')->name('katalog-obat');
Route::get('/katalog-obat/cari','KatalogObatController@search')->name('katalog-obat.cari');

Route::get('/penyakit','PenyakitController@index')->name('penyakit');
Route::get('/penyakit/cari','PenyakitController@search')->name('penyakit.cari');

Route::get('/help','HelpController@index')->name('help');