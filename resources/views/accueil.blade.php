@extends('layouts.base')
@section('title', 'Accueil')
@section('main')
  <h2>Accueil</h2>
    <div class="btn-group" role="group">
      <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Trier par
      </button>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="{{url('/')}}">Chanteur</a>
        <a class="dropdown-item" href="{{url('/title')}}">Titre</a>
      </div>
    </div>
  <div class="liste">
    <table class="table table-striped">
      <thead>
        <tr>
          <th class="bold" scope="col">Titre</th>
          <th class="bold" scope="col">Chanteur</th>
          <th class="bold" scope="col">Date de sortie</th>
          <th class="bold" scope="col">Prix</th>
          <th class="bold" scope="col">Genre</th>
          <th class="bold" scope="col">En stock</th>
          <th class="bold" scope="col"></i></th>
          <th class="bold" scope="col"></th>
        </tr>
      </thead>
      <tbody>
        @foreach ($sounds as $sound)
        <tr>
          <td>{{ $sound->title }}</td>
          <td>{{ $sound->singer }}</td>
          <td>{{ $sound->release }}</td>
          <td>{{ $sound->price }}</td>
          @if ($sound->genders)
            <td>
              @foreach ($sound->genders as $gender)
                {{ $gender->gender}}
              @endforeach
            </td>
          @else
            <td>Inconnu</td>
          @endif
          @if ($sound->availability)
            <td>{{ $sound->availability->availability }}</td>
          @else
            <td>?</td>
          @endif
          <td>
            <form action="/sound/update/{{$sound->id}}" method="get">
              {{ csrf_field() }}
              <button type="submit">
                <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
              </button>
            </form>
          </td>
          <td>
            <form action="/sound/delete/{{$sound->id}}" method="get">
              {{ csrf_field() }}
              <button type="submit">
                <i class="fa fa-trash-o" aria-hidden="true"></i></i>
              </button>
            </form>
          </td>
        </tr>
        @endforeach
        </tbody>
      </table>
@endsection
@section('footer')
  <?php echo $sounds->render(); ?>
@endsection
