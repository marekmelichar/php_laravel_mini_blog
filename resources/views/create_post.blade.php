@extends('layouts.app')

@section('title', $title)

@section('content')

    <section class="container">
        {!! Form::open(['url' => 'post', 'method' => 'post', 'class' => 'post', 'id' => 'add-form']) !!}
            @include('partials.create_post_form')
        {!! Form::close() !!}
    </section>

@endsection
