<?php

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



Route::post('/create-brand',[DemoController::class,'create']);
Route::post('/update-brand/{id}',[DemoController::class,'update']);
Route::post('/create_update-brand/{brandName}',[DemoController::class,'create_update']);
Route::get('/delete/{id}',[DemoController::class,'delete']);

Route::get('/increment-Decrement/{id}',[DemoController::class,'increment_decrement']);
Route::get('/retrive',[DemoController::class,'retrive']);
Route::get('/Aggreagates',[DemoController::class,'Aggreagates']);
Route::get('/select',[DemoController::class,'select']);
Route::get('/where',[DemoController::class,'where']);
Route::get('/paginate',[DemoController::class,'paginate']);


Route::get('/relation',[RelatioshipController::class,'relation']);
Route::get('/relationbelongsto',[RelatioshipController::class,'relationbelongsto']);

