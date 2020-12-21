<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNoticiasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('noticias', function (Blueprint $table) {
            $table->id();
            $table->text('titulo',254);
            $table->unsignedBigInteger('autor_id')->nullable();    
            $table->foreign('autor_id')
                    ->references('id')->on('autores')
                    ->onDelete('set null');
            $table->date('fecha_publicacion');
            $table->longText('contenido');
            $table->text('url');
            $table->unsignedBigInteger('categoria_id')->nullable();
            $table->foreign('categoria_id')
                    ->references('id')->on('categorias')
                    ->onDelete('set null');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('noticias');
    }
}
