<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Profile;
use App\Models\Tag;
use App\Models\User;
use Illuminate\Http\Request;

class RelatioshipController extends Controller
{
    public function relation(Request $request){
         // return Profile::get();
        // return User::with('Profile')->get();
        // return User::with('post')->get();
        return Tag::with('post')->get();
       
    }
    public function relationbelongsto(Request $request){
        // return Profile::with('user')->get();
        // return Profile::get();
    }
}
