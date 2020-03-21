<?php

namespace App\Http\Controllers;

use App\Tumbuhanobat;
use Illuminate\Http\Request;

class KatalogObatController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data_obat = Tumbuhanobat::paginate(5);
        $data_obat_baru = Tumbuhanobat::orderBy('id','desc')->limit(5)->get();
        return view('katalog_obat_pages')->with('title','Katalog Obat')
                ->with('obat',$data_obat)
                ->with('obat_baru',$data_obat_baru);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function search(Request $request){
        $data_obat = Tumbuhanobat::where('nama_tumbuhan','like','%'.$request->get('cari_obat').'%')
            ->orWhere('kegunaan','like','%'.$request->get('cari_obat').'%')
            ->paginate(5);
        $data_obat_baru = Tumbuhanobat::orderBy('id','desc')->limit(5)->get();
        return view('katalog_obat_pages')->with('title','Katalog Obat')->with('obat',$data_obat)->with('obat_baru',$data_obat_baru);
        //return $request->get('cari_obat');
    }
}
