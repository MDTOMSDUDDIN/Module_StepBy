<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Demo2Controller extends Controller
{
    public function demo1()
    {
      // Simple Data SELECT
      //return DB::table('users')->get();


      // Retrieving Single Row
     // return DB::table('users')->first();
      //return DB::table('users')->find(36);


      // Column Values
      //return DB::table('users')->pluck('firstName');



      // Minimum
      //return DB::table('products')->min('price');


      // Maximum
      //return DB::table('products')->max('price');

      // Avg
      // return DB::table('products')->avg('price');


      // sum
      //return DB::table('products')->sum('price');


  }
}
