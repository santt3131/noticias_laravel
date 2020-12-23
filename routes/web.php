<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\NoticiasController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
   return redirect('/lista_noticias');

});

Route::get('/lista_noticias', [NoticiasController::class,'index']);
Route::get('lista_noticias/{id}', [NoticiasController::class,'show']);