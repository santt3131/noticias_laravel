<?php

use App\Http\Controllers\ApiController;
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

/*API */
Route::get('/api/noticias/{page}',[ApiController::class, 'listaNoticias']);

Route::get('/api/noticia/{id}',[ApiController::class, 'mostrarNoticia']);

Route::get('/api/categoria/{id}/{page?}',[ApiController::class, 'mostrarNoticiasCategoria']);

Route::get('/api/autor/{id}/{page?}',[ApiController::class, 'mostrarNoticiasAutorPagina']);