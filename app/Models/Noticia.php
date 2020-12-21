<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Noticia extends Model
{
    use HasFactory;
    //Relacion uno a muchos(inversa)
    public function autor(){
        return $this->belongsTo(Autor::class);
    }

    public function categoria(){
        return $this->belongsTo(Categoria::class);
    }

}
