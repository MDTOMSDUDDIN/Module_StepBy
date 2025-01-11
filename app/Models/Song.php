<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Song extends Model
{
    public $timestamps=false;
   
    protected $fillable=[
        'title',
        'year',
        'artist_id',
        'genre_id',
    ];
}
