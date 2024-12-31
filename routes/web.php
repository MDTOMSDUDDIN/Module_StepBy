<?php

use App\Http\Controllers\DemoController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';


route::get('/retrive',[DemoController::class,'DemoAction']);
route::get('/Aggregates',[DemoController::class,'Aggregates']);
route::get('/select',[DemoController::class,'select']);

route::get('/innerJoin',[DemoController::class,'innerJoin']);
route::get('/left_right',[DemoController::class,'left_right']);
route::get('/crossJoin',[DemoController::class,'crossJoin']);
route::get('/advanceJoin',[DemoController::class,'advanceJoin']);
route::get('/unions',[DemoController::class,'unions']);


route::get('/where',[DemoController::class,'where']);
route::get('/whereDay',[DemoController::class,'whereDay']);

route::get('/order',[DemoController::class,'order']);
