<?php

namespace App\Http\Controllers;

use Illuminate\Database\Query\JoinClause;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use function Pest\Laravel\get;

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
        $query2=DB::table('products')->where('products.discount',"=",10)->union($query1)->get(); 
        return $query2;
      }
   

      public function where(){
         $WHERE=DB::table('products')
         // ->where('products.price',">",1000)
         // ->whereNot('products.price',"=" ,"20")
         // ->whereBetween('products.price',[100 ,1000])
         // ->whereNotBetween('products.price',[100 ,1000])
         // ->whereNull('products.price')
         // ->whereNotNull('products.price')
         // ->whereIn('products.price',[999.99,59.99])
         ->whereNotIn('products.price',[999.99,59.99])
   
         ->get();
         return $WHERE;
      }


      function whereDay(){
         $result=DB::table('brands')
         // ->whereDate('create_at','1')
         // ->whereMonth('create_at','12')
         // ->whereYear('create_at','2024')
         // ->whereTime('create_at','19:49:08')
         ->whereColumn('create_at','<','update_at') 
         ->get();
         return $result;
      }

      // function order(){
      //    // $result=DB::table('brands')->orderBy('brandName','asc')->get();
      //    // $result=DB::table('brands')->orderBy('brandName','desc ')->get();
      //    // $result=DB::table('brands')->inRandomOrder()->first();
      //    // $result=DB::table('brands')->oldest()->first();
      //    $result=DB::table('brands')->latest()->first();
      //    return $result;
      // }
      function order(){
         $result=DB::table('products')
         ->skip(2)
         ->take(3)
         ->get();
         return $result;
      }

    function groupby(){
      $result=DB::table('products')
      ->groupBy('price')
      ->having('price',">",'1000')
      ->get();
      return $result;
    }


//     function insert(){
//       $result=DB::table('brands')
//       ->insert([
//          'brandName'=>'insert name ',
//          'brandImg'=>'tomas.jpg'
//       ]);
//       return $result;
//     }
    function insert(Request $request){
      $result=DB::table('brands')
      ->insert($request->input());
      return $result;
    }

    function update(Request $request){
      $result=DB::table('brands')
      ->where('id' ,$request->id)
      ->update($request->input());
      return $result;
    }

    function update_insert(Request $request){
      $result=DB::table('brands')
      ->updateOrInsert(
         ['brandName'=>$request->name],
         $request->input()
      );
      return $result;
    }


    function increment_decrement(Request $request){
      $result=DB::table('products')
      ->where('id',$request->id)
      // ->increment('price',10);
      ->decrement('price',20);
      
      return $result;
    }


    function delete( Request $request ){
      $result=DB::table('products')
      ->delete();
      return $result;
      }

      

  }
