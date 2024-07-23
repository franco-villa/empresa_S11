@extends('layout')

@section('title', 'Personas | ' . $persona->cPerNombre)

@section('content')
    @auth
        <h2>DETALLE</h2>
        <tr>
            <td colspan="4" style="text-align: center;">
                <a href="{{ route('personas.edit', $persona) }}" class="btn btn-primary" style="margin-right: 10px;">Editar</a>
                <form action="{{ route('personas.destroy', $persona) }}" method="POST" style="display:inline;">
                    @csrf
                    @method('DELETE')
                    <button class="btn btn-danger">Eliminar</button>
                </form>
            </td>
        </tr>
    @endauth

    <table class="table table-bordered">
        <tr>
            <th>Id</th>            
            <th>cPerRnd</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>nPerSueldo</th>
        </tr>
            
        <tr>
            <td>
                {{ $persona->id }}
            </td>
            <td>
                {{ $persona->cPerRnd }}
            </td>
            <td>
                {{ $persona->cPerNombre }}
            </td>
            <td>
                {{ $persona->cPerApellido }}
            </td>
            <td>
                {{ $persona->nPerSueldo }}
            </td>
        </tr>
    </table>
   
@endsection