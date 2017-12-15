@extends('layouts.base')
@section('title', 'New Dog')
@section('main')
   <section class="container">

   <h2>Nouvelle musique</h2>
   {!! Form::open(['url' => '/sound/insert']) !!}
       <div class="form-group">
           {{{ Form::label('Titre') }}}
           {{{ Form::text('title', null, ['class' => 'form-control']) }}}
       </div>
       <div class="form-group">
           {{{ Form::label('Chanteur') }}}
           {{{ Form::text('singer', null, ['class' => 'form-control']) }}}
       </div>
       <div class="form-group">
           {{{ Form::label('Date de sortie') }}}
           {{{ Form::number('release', null, ['class' => 'form-control']) }}}
       </div>
       <div class="form-group">
           {{{ Form::label('Prix') }}}
           {{{ Form::number('price', null, ['class' => 'form-control']) }}}
       </div>

       <div class="form-group">
           {{{ Form::label('Genre') }}}
           {{{ Form::select('gender[]', $genders, null, ['multiple' => true], ['class' => 'form-control']) }}}
       </div>
       <div class="form-group">
           {{{ Form::label('En stock ?') }}}
           {{{ Form::select('availability', $availabilities, null, ['class' => 'form-control']) }}}
       </div>

       <div class="form-group">
           {{{ Form::submit('Enregistrer') }}}
       </div>
       {!! Form::close() !!}
   </section>

@endsection
