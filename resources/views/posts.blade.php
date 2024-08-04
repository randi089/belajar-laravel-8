@extends('layouts.main')

@section('container')
    <h1 class="mb-5 text-center">{{ isset($type) ? $type : '' }} {{ $title }}</h1>

    @if ($posts->count())
        <div class="card mb-3">
            <img src="../img/post/{{ $posts[0]->category->slug }}.jpg" class="card-img-top height"
                alt="{{ $posts[0]->category->name }}">
            <div class="card-body text-center">
                <h3 class="card-title"><a href="/posts/{{ $posts[0]->slug }}" class="text-dark">{{ $posts[0]->title }}</a></h3>
                <p><small class="text-muted">By. <a
                            href="/authors/{{ $posts[0]->author->username }}">{{ $posts[0]->author->name }}</a> in <a
                            href="/categories/{{ $posts[0]->category->slug }}">{{ $posts[0]->category->name }}</a>
                        {{ $posts[0]->created_at->diffForHumans() }}</small></p>
                <p class="card-text">{{ $posts[0]->excerpt }}</p>
                <a href="/posts/{{ $posts[0]->slug }}" class="btn btn-primary">Read more &raquo;</a>
            </div>
        </div>
        <div class="container">
            <div class="row">
                @foreach ($posts->skip(1) as $post)
                    <div class="col-md-4 mb-3 d-flex">
                        <div class="card">
                            <div class="position-absolute bg-transp px-3 py-2">
                                <a href="/categories/{{ $post->category->slug }}"
                                    class="text-white">{{ $post->category->name }}</a>
                            </div>
                            <img src="../img/post/{{ $post->category->slug }}.jpg" class="card-img-top"
                                alt="{{ $post->category->name }}">
                            <div class="card-body d-flex flex-column justify-content-between align-items-start">
                                <h3 class="card-title"><a href="/posts/{{ $post->slug }}">{{ $post->title }}</a></h3>
                                <p>
                                    <small class="text-muted">By. <a
                                            href="/authors/{{ $post->author->username }}">{{ $post->author->name }}</a>
                                        {{ $post->created_at->diffForHumans() }}</small>
                                </p>
                                <p class="card-text">{{ $post->excerpt }}</p>
                                <a href="/posts/{{ $post->slug }}" class="btn btn-primary">Read more
                                    &raquo;</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    @else
        <p class="text-center fs-4">No post found.</p>
    @endif
@endsection
