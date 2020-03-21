<?php

namespace App\Http\Controllers;

use App\Penyakit;
use Illuminate\Http\Request;

class PenyakitController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data_penyakit = Penyakit::paginate(5);
        $data_penyakit_baru = Penyakit::orderBy('id','desc')->limit(5)->get();

        return view('penyakit_pages')->with('title','Penyakit')
                ->with('penyakit',$data_penyakit)
                ->with('penyakit_baru',$data_penyakit_baru);
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
        $data_penyakit = Penyakit::where('nama_penyakit','like','%'.$request->get('cari_penyakit').'%')
            ->paginate(5);
        $data_penyakit_baru = Penyakit::orderBy('id','desc')->limit(5)->get();
        return view('penyakit_pages')->with('title','Penyakit')
            ->with('penyakit',$data_penyakit)
            ->with('penyakit_baru',$data_penyakit_baru);
        //return $request->get('cari_obat');
    }
}
