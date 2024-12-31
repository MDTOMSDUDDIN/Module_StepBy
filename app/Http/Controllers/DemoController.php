<?php

namespace App\Http\Controllers;

use Illuminate\Database\Query\JoinClause;
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


    // function  Aggregates(){
    //     // $result=DB::table('profile')->count();
    //     // return $result;

    //     // $result=DB::table('profile')->max('price');
    //     // return $result;

    //     // $result=DB::table('profile')->min('price');
    //     // return $result;
       
    //     // $result=DB::table('profile')->avg('price');
    //     // return $result;

    //     $result=DB::table('profile')->sum('price');
    //     return $result;
    //      } 
    
         // function select(){
         //    $result=DB::table('profile')->select('firstname')->distinct()->get();
         //    return $result;
         // }

      function innerJoin(){
         $products=DB::table('products')
          ->join('categories','products.category_id',"=",'categories.id')
          ->join('brands','products.brand_id',"=",'brands.id')
          ->get();
          return $products;
      }
      
      // function left_right(){
      //    $products=DB::table('products')
      //     ->leftJoin('categories','products.category_id',"=",'categories.id')
      //     ->leftJoin('brands','products.brand_id',"=",'brands.id')
      //     ->get();
      //     return $products;
      // }

      function left_right(){
         $products=DB::table('products')
          ->rightJoin('categories','products.category_id',"=",'categories.id')
          ->rightJoin('brands','products.brand_id',"=",'brands.id')
          ->get();
          return $products;
      }

      function crossJoin(){
         $products=DB::table('products')
         ->crossJoin('brands')
         ->get();
      }


      function advanceJoin(){
         $products=DB::table('products')
         ->join('categories', function(JoinClause $join){
            $join->on('products.category_id',"=",'categories.id')
            ->where('products.price',">",200);
         })->get();
       
         return $products;
      }

      function unions(){
        $query1=DB::table('products')->where('price','>',"200");
        $query2=DB::table('products')->where('category_id',"=",3)->union($query1)->get(); 
        return $query2;
      }
   
}
