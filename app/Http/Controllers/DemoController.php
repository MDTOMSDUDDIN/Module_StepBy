<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Product;
use App\Models\ProductDetail;
use Illuminate\Http\Request;

class DemoController extends Controller
{
    

    public function create(Request $request){
           return Brand::Create($request->input());
    }

    public function update(Request $request){
        return Brand::where('id',$request->id)->update($request->input());
    }

    public function create_update(Request $request){
        return Brand::updateOrCreate(
            ['brandName'=>$request->brandName],
            $request->input(),
        );
    }

    public function delete(Request $request){
        // return Brand::where('id',$request->id)
        return Brand::where('id','=',$request->id)
        ->delete();
    }

    public function increment_decrement(Request $request){
        return Product::where('id',"=",$request->id)
        // ->increment('price',100);
        // ->increment('price');
        ->decrement('price',200);
    }

    public function retrive(Request $request){
        // return Product::get();
        // return Product::all();
        // return Product::first();
        // return Product::find(2);
        // return Product::pluck('discount');
        return Product::pluck('discount','image');

    }

    public function Aggreagates(Request $request){
        // return Product::sum('price');
        // return Product::avg('price');
        // return Product::max('price');
        // return Product::min('price');
        return Product::count('price');
    }
    
    public function select(Request $request){
        // return Product::select('title')->get();
        return Product::select('title')->distinct()->get();
    }
    public function where(Request $request){
        // return Product::where('price','=','200')->get();
        // return Product::where('price','<','200')->get();
        // return Product::where('price','<=','300')->get();
        // return Product::where('price','>=','1499.99')->get(); 
        // return ProductDetail::where('des','LIKE','%running%')->get();       
        // return ProductDetail::where('des','NOT LIKE','%running%')->get();   
        // return Product::whereBetween('price',[1,500])->get();    
        // return Product::whereIn('price',[1,902.99])->get();    
        // return Product::whereNotIn('price',[1,902.99])->get();    
        // return Product::whereNull('price')->get();    
        // return Product::whereNotNUll('price')->get();    
        // return Product::whereDay('updated_at','2025-01-12')->get();    
        return Product::whereMonth('updated_at','01')->get();    
    }

}
