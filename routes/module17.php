<?php

use App\Http\Controllers\DemoController;
use Illuminate\Support\Facades\Route;

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
route::get('/groupby',[DemoController::class,'groupby']);


route::post('/insert',[DemoController::class,'insert']);
route::post('/update/{id}',[DemoController::class,'update']);
route::post('/update_insert/{name}',[DemoController::class,'update_insert']);
route::get('/increment_decrement/{id}',[DemoController::class,'increment_decrement']);
route::get('/delete/{id}',[DemoController::class,'delete']);
