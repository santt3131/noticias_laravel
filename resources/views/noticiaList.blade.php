@extends('layout.plantilla')

@section('title', 'Lista de noticias')

@section('content')
    <h1>Lista de noticias</h1>
    <table>
        <tbody>
            @foreach ($newsList as $news)
            <tr>
                <td>{{ $news->titulo }}</td>
                <td>{{ $news->autor->nombre }}</td>
                <td>{{ $news->fecha_publicacion }}</td>
                <td>{{ $news->categoria->nombre }}</td>
                <td>
                    <a  href="lista_noticias/{{$news->id}}" >
                        Ver más
                    </a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
@endsection
