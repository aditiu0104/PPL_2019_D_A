<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use App\Laporan;
use Carbon\Carbon;
use Illuminate\Http\Request;

class LaporanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $tanggal = date("Y-m-d");


      $tanggal1 = DB::table('temperatures')
      ->where('suhu', '>', 24)
      ->where('tanggal', date('Y-m-d',strtotime("-1 days")) )
      ->limit(52)
      ->get();

      $tanggal2 = DB::table('temperatures')
      ->where('suhu', '>', 24)
      ->where('tanggal', date('Y-m-d' ))
      ->limit(52)
      ->get();

      $tanggal3 = DB::table('temperatures')
      ->where('suhu', '<', 16)
      ->where('tanggal', date('Y-m-d',strtotime("-1 days")) )
      ->limit(52)
      ->get();

      $tanggal4 = DB::table('temperatures')
      ->where('suhu', '<', 16)
      ->where('tanggal', date('Y-m-d' ))
      ->limit(52)
      ->get();




      return view('laporan  ',compact( 'tanggal1','tanggal2','tanggal3','tanggal4'));

      // return view('laporan');
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
}
