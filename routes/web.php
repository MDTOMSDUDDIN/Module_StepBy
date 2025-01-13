<?php

use App\Http\Controllers\DataController;
use App\Http\Controllers\DemoController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\RelatioshipController;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth', 'verified'])->name('dashboard');

// Route::middleware('auth')->group(function () {
//     Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
//     Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
//     Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
// });
// require __DIR__.'/auth.php';


Route::get('/data',[DataController::class,'index']);
Route::get('/book',[DataController::class,'book']);
Route::get('/insert-book',[DataController::class,'insertbook']);

Route::get('/page',[DataController::class,'page']);


Route::get("/demo1",[DemoController::class,'demo1']);
Route::get("/demo2",[DemoController::class,'demo2']);
Route::get("/demo3",[DemoController::class,'demo3']);
