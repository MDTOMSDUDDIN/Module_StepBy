<?php

namespace App\Http\Controllers;

use App\Models\Song;
use Illuminate\Http\Request;

class DataController extends Controller
{
    public function index(Request $request){
        // return Song::all();
        // return Song::get();
        // return Song::find(2);
        // return Song::where('id','<=',2)->get();
        // return Song::where('id','=',2)->get();
        // return Song::where('id',2)->first();
        // return Song::where('title','Thriller')->get();
        
        // return Song::whereTitle('Thriller')->get();
        return Song::whereArtist_id('2')->get();


    }
}
