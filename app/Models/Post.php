<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    function user(){
        return $this->belongsTo(Post::class);
    }

    function post(){
        return $this->belongsToMany(Tag::class,'post_tags');
    }
}
