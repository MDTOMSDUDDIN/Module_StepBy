<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DemoController extends Controller
{
    // public function DemoAction(){
    //     $result=DB::table('profile')->get();             //get() all row select
    //     return $result;
    // }

    // public function DemoAction(){
    //     $result=DB::table('profile')->first(4);           //first()
    //     return $result;
    // }
    // public function DemoAction(){
    //     $result=DB::table('profile')->find(4);           //find()
    //     return $result;
    // }

    // public function DemoAction(){
    //     $result=DB::table('profile')->pluck('firstname');            //pluck single column value 
    //     return $result;
    // }

    // public function DemoAction(){
    //     $result=DB::table('profile')->pluck('email',"firstname");
    //     return $result;
    // }


    function  Aggregates(){
        // $result=DB::table('profile')->count();
        // return $result;

        // $result=DB::table('profile')->max('price');
        // return $result;

        // $result=DB::table('profile')->min('price');
        // return $result;
       
        // $result=DB::table('profile')->avg('price');
        // return $result;

        $result=DB::table('profile')->sum('price');
        return $result;
         } 
    
}
