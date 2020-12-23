<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Autor extends Model
{
    use HasFactory;
    protected $table= 'autores';
    protected $primaryKey= 'id';

    /*Relacion de uno a muchos */
    public function noticias(){
        return $this->hasMany(Noticia::class);
    }
}
