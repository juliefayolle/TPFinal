@extends('layouts.base')
@section('title', 'New Dog')
@section('main')
   <section class="container">

   <h2>Nouvelle musique</h2>
   {!! Form::open(['url' => '/sound/update']) !!}
    {!! Form::hidden('id', $sound->id) !!}
       <div class="form-group">
           {{{ Form::label('Titre') }}}
           {{{ Form::text('title', $sound->title, ['class' => 'form-control']) }}}
       </div>
       <div class="form-group">
           {{{ Form::label('Chanteur') }}}
           {{{ Form::text('singer', $sound->singer, ['class' => 'form-control']) }}}
       </div>
       <div class="form-group">
           {{{ Form::label('Date de sortie') }}}
           {{{ Form::number('release', $sound->release, ['class' => 'form-control']) }}}
       </div>
       <div class="form-group">
           {{{ Form::label('Prix') }}}
           {{{ Form::number('price', $sound->price, ['class' => 'form-control']) }}}
       </div>

       <div class="form-group">
           {{{ Form::label('Genre') }}}
           {{{ Form::select('gender[]', $genders, $sound->gender, ['multiple' => true], ['class' => 'form-control']) }}}
       </div>
       <div class="form-group">
           {{{ Form::label('En stock ?') }}}
           {{{ Form::select('availability', $availabilities, $sound->availability->id, ['class' => 'form-control']) }}}
       </div>

       <div class="form-group">
           {{{ Form::submit('Enregistrer') }}}
       </div>
       {!! Form::close() !!}
   </section>

@endsection
