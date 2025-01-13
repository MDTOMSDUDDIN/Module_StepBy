<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use App\Models\User;
use Illuminate\Http\Request;

class DemoController extends Controller
{
    //

function demo1()
{

 // return  Product::all();
    return  Product::with(['category','user'])->get(); // belongs relationship
}


function demo2()
{

   // return User::all();
    return User::with(['category','customer','products','invoice','invoice_products'])->get();  // has relationship
}


function demo3()
{
    return Category::simplePaginate(3);
}

    function demo4()
    {
        return Category::paginate(
            $perPage = 5,
            $column = 'name',
            $perPage= 'page'
        );
    }

    function demo5()
    {
       return Category::orderBy('id', 'asc')->get();
    }

    function demo6()
    {
       // return Category::skip(2)->take(2)->get();
       //  return Category::limit(3)->get();
    }
}