@extends('layout.plantilla')

@section('title', 'Noticia')

@section('content')
    <h1>Noticia</h1>

            @foreach ($noticia as $news)
            <h2>{{ $news->titulo }}</h2>
            <h3>{{ $news->categoria->nombre }}</h3>
            <h3>{{ $news->autor->nombre }}</h3>
            <h3 class="date">{{ $news->fecha_publicacion }}</h3>
            <p class="contenido">
                {!!  nl2br(stripcslashes($news->contenido)) !!}
            </p>
            <p class="img">
                <img src="{{ $news->url }}" alt="">
            </p>
            <a class="font_large" href="{{URL::to('/lista_noticias')}}">
                 &#8592; Volver
            </a>
        @endforeach
   
@endsection
