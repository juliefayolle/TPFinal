<div class="menu flex-container">
  <h1>Music store</h1>
  <ul class="nav nav-pills">
    <li class="nav-item">
      <a class="btn btn-outline-light" href="{{url('/')}}">Accueil</a>
    </li>
    <li class="nav-item">
      <a class="btn btn-outline-light" href="{{url('/create')}}">Nouveau</a>
    </li>
  </ul>
</div>
<div class="search">
  <form action="/search" method="get" role="search">
    <input type="search" name="search" placeholder="Chercher un titre">
    <button type="submit" name="button"><i class="fa fa-search" aria-hidden="true"></i></button>
  </form>
</div>
