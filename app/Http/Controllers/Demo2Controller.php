<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Demo2Controller extends Controller
{
    public function demo1(){
    //   Simple Data SELECT
    //   return DB::table('users')->get();


    //   Retrieving Single Row
    //  return DB::table('users')->first();
    //   return DB::table('users')->find(36);


    //   Column Values
    //   return DB::table('users')->pluck('firstName');



    //   Minimum
    //   return DB::table('products')->min('price');


    //   Maximum
    //   return DB::table('products')->max('price');

    //   Avg
    //   return DB::table('products')->avg('price');


     // sum
      //return DB::table('products')->sum('price');

       // count
      //return DB::table('products')->count();



      // Select Clause
      //return DB::table('products')->select('name','price')->get();


      // Inner Join
     /* return DB::table('products')
              ->join('categories', 'products.category_id', '=', 'categories.id')
              ->get();
      */



      // Left Join
      /*
      return DB::table('products')
          ->leftJoin('categories', 'products.category_id', '=', 'categories.id')
          ->get();
      */




      // Right Join
      /*
      return DB::table('products')
          ->rightJoin('categories', 'products.category_id', '=', 'categories.id')
          ->get();
      */



      // Cross Join
      /*
      return DB::table('products')
          ->crossJoin('categories', 'products.category_id', '=', 'categories.id')
          ->get();
      */



      // Union
      //$q1=DB::table('products')->where('price','>',100);
      //$q2=DB::table('products')->where('category_id','>',2);
      //return $q1->union($q2)->get();


      // Limit
      // return DB::table('products')->limit(2)->get();


      // Ordering ASC
      //return DB::table('products')->orderBy('id', 'asc')->get();


      // Ordering desc
      //return DB::table('products')->orderBy('id', 'desc')->get();


      // latest
      //return DB::table('products')->latest()->first();

      // oldest
      //return DB::table('products')->oldest()->first();


      // skip & take
      //return DB::table('products')->skip(2)->take(2)->get();


      // Pagination
      //return DB::table('products')->simplePaginate(5);
 
      


      // Insert
      /*
      return DB::table('users')
          ->insert([
              'firstName'=>'A',
              'lastName'=>'B',
              'email'=>'C',
              'mobile'=>'D',
              'password'=>'E',
              'otp'=>'0'
          ]);
      */



      // Update

      /*
      return DB::table('users')
          ->where('id', 212)
          ->update([
              'firstName'=>'AAA',
              'lastName'=>'BBB'
          ]);
      */


      // Upsert -> update or insert
      /*
      return DB::table('users')
          ->updateOrInsert(
              ['email'=>'XYZ@gmail.com'],
              [
              'firstName'=>'A',
              'lastName'=>'B',
              'email'=>'XYZ@gmail.com',
              'mobile'=>'D',
              'password'=>'E',
              'otp'=>'0'
              ]
          );
      */


      // Delete
      
      return DB::table('users')
          ->where('id', 212)
          ->delete();
      

  }
}
