<?php

namespace App\Http\Controllers;

use App\Models\Noticia;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class NoticiasController extends Controller
{

    //sera la lista de noticias
    public function index(){
        //$noticias = Noticia::all();
        $noticias = Noticia::orderby('fecha_publicacion','desc')->get();
        return view('noticiaList', ['newsList'=> $noticias]);
    }

    //mostrar la noticia
    public function show($id){
        $noticia_unica = Noticia::where('id',$id)->get();
        return view('noticia', ['noticia'=> $noticia_unica]);
    }

}
