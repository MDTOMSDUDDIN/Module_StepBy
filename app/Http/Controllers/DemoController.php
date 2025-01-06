<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use Illuminate\Http\Request;

class DemoController extends Controller
{
    

    public function create(Request $request){
           return Brand::Create($request->input());
    }
}
