@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    You are logged in!
                </div>
            </div>
        </div>
    </div>
</div>


    <section class="box post-list">
        <h1 class="box-heading text-muted">
            {{ $title or "this is a blog..." }}
        </h1>


        @forelse($posts as $post)

            <article id="post-{{ $post->id }}" class="post">
                <header class="post-header">
                    <h2>
                        <a href="{{ url('post', $post->id) }}">{{ $post->title }}</a>
                        <time>
                            <small>/ {{ $post->created_at }}</small>
                        </time>
                    </h2>
                    @include('partials.tags')
                </header>
                <div class="post-content">
                    <p>
                        {{ $post->teaser }}
                    </p>
                </div>
                <footer class="post-footer">
                    <a href="{{ url('post', $post->id) }}" class="read-more">read more</a>
                </footer>
            </article>

        @empty

            <p>we got nothing....</p>

        @endforelse

    </section>
@endsection
