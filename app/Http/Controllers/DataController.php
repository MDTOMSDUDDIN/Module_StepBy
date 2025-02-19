<?php

namespace App\Http\Controllers;

use App\Models\Artist;
use App\Models\Author;
use App\Models\Book;
use App\Models\Genre;
use App\Models\Song;
use Illuminate\Http\Request;

class DataController extends Controller
{
    public function index(Request $request){
        // return Song::all();
        // return Song::get();
        // return Song::find(2);
        // return Song::where('id','<=',2)->get();
        // return Song::where('id','=',2)->get();
        // return Song::where('id',2)->first();
        // return Song::where('title','Thriller')->get();
        
        // return Song::whereTitle('Thriller')->get();
        // return Song::whereArtist_id('2')->get();
        // return Song::where('year',',',1985)->get();
        // return Song::where('year','<',1985)->where('title','LIKE','t%')->get();


        // return Song::where('year','<',1985)->where('title','LIKE','%t')->get();

        //  $song=Song::find(20);
        //  $song->title="private dancer";
        //  $song->save();
        //  return $song;

        // return Song::find(20);
        

        // // return Artist::all();
        //  Artist::create(
        //     [
        //         "name"=>'tomas',
        //     ]);
        //  return Artist::all();

        //  $song=Song::insert([
        //     'title'=>'bystep',
        //     'year'=>2024,
        //     'artist_id'=>13,
        //     'genre_id'=>1,
        //   ]);
        // $song=[
        //     'title'=>'bystep',
        //     'year'=>2024,
        //     'artist_id'=>13,
        //     'genre_id'=>1,
        // ];
        // $song=Song::create($song);
        // return $song;

        // return Song::with('Artist','Genre')->get();
        // return Song::with(['Artist','Genre'])->get();
        
        // $songs=Song::with(['Artist'])->orderBy('title')->get();
        // $songs->map(function($song){
        //  echo  $song->title." - ".$song->artist->name."<br>";
        // });

        // $songs=Song::with(['Artist','Genre'])->orderBy('title')->get();
        // $songs->map(function($song){
        //  echo  $song->title." - ".$song->artist->name." - ".$song." - ".$song->genre->name."<br>";
        // });

        // return Artist::with('songs')->get();
        // return Artist::with('songs')->find(1);
        // return Artist::with('songs')->find(1)->count();
        // return Artist::with('songs')->whereIn('id',[1,2])->get();
        // return Artist::with('songs')->whereName('Michael Jackson')->get();


        // return Genre::with('songs')->get();
        //  Genre::all();

        // $songs=Song::all();
        // foreach($songs as $song){
        //     echo $song->title ."</br>";
        // }

        return Song::pluck('title');


    }

    function  book(Request $request){
        // return Book::all();
        // return Author::all();

        // return Book::with('authors')->get();
        return Author::with('books')->get();
    }
    
    function insertbook(Request $request){
       $author= Author::where('name','Jack London')->first();
       $book=new book();
       $book->title='white frog';
       $book->save();
       $book->authors()->attach($author);

       return response()->json($book);
    }



    function page(Request $request){
        // return Song::paginate(5);
        return Song::with('artist')->paginate(5);
    }
    
}
