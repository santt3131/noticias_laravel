<?php

namespace App\Http\Controllers;

use App\Models\Noticia;
use App\Models\Autor;
use App\Models\Categoria;
use Illuminate\Http\Request;

class ApiController extends Controller
{
    public function listaNoticias($page){
        $consulta = Noticia::select('id','titulo','fecha_publicacion')
                    ->skip(10*($page - 1))->take(10)->get();
        return $consulta;
    }

    public function mostrarNoticia($id){
        $consulta = Noticia::where('id','=', $id)->get();
        return $consulta;
    }

    public function mostrarNoticiasCategoria($id,$page = null){
        $getIdCategoria= Categoria::select('id')
                            ->where('nombre','=', $id)
                            ->get();
        
        if ($page > 0){
                $consulta = Noticia::select('id','titulo','fecha_publicacion')
                                    ->whereIn('categoria_id', $getIdCategoria)
                                    ->skip(10*($page - 1))->take(10)
                                    ->get();
        }else{
                $consulta = Noticia::select('id','titulo','fecha_publicacion')
                                    ->whereIn('categoria_id', $getIdCategoria)
                                    ->get();
        }
        return $consulta;
    }



    public function mostrarNoticiasAutorPagina($id,$page = null){
        $getIdAutor= Autor::select('id')
                            ->where('nombre','like', '%'.$id.'%')
                            ->get();
        if ($page > 0){
                $consulta = Noticia::select('id','titulo','fecha_publicacion')
                                    ->whereIn('autor_id', $getIdAutor)
                                    ->skip(10*($page - 1))->take(10)
                                    ->get();
        }else{
                $consulta = Noticia::select('id','titulo','fecha_publicacion')
                                    ->whereIn('autor_id', $getIdAutor)
                                    ->get();
        }
        return $consulta;
    }

}
