@extends('layouts.main')

@section('container')
    <h1 class="mb-3 text-center">{{ isset($type) ? $type : '' }} {{ $title }}</h1>

    <div class="row justify-content-center mb-3">
        <div class="col-md-6">
            <form action="/posts">
                @if (request('category'))
                    <input type="hidden" name="category" value="{{ request('category') }}">
                @elseif (request('author'))
                    <input type="hidden" name="author" value="{{ request('author') }}">
                @endif
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Search.." name="search"
                        value="{{ request('search') }}">
                    <button class="btn btn-success" type="submit">Search</button>
                </div>
            </form>
        </div>
    </div>

    @if ($posts->count())
        <div class="card mb-3">
            <img src="img/post/{{ $posts[0]->category->slug }}.jpg" class="card-img-top height"
                alt="{{ $posts[0]->category->name }}">
            <div class="card-body text-center">
                <h3 class="card-title"><a href="/posts/{{ $posts[0]->slug }}" class="text-dark">{{ $posts[0]->title }}</a>
                </h3>
                <p><small class="text-muted">By. <a
                            href="/posts?author={{ $posts[0]->author->username }}">{{ $posts[0]->author->name }}</a> in <a
                            href="/posts?category={{ $posts[0]->category->slug }}">{{ $posts[0]->category->name }}</a>
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
                                <a href="/posts?category={{ $post->category->slug }}"
                                    class="text-white">{{ $post->category->name }}</a>
                            </div>
                            <img src="img/post/{{ $post->category->slug }}.jpg" class="card-img-top"
                                alt="{{ $post->category->name }}">
                            <div class="card-body d-flex flex-column justify-content-between align-items-start">
                                <h3 class="card-title"><a href="/posts/{{ $post->slug }}"
                                        class="truncated">{{ $post->title }}</a></h3>
                                <p>
                                    <small class="text-muted">By. <a
                                            href="/posts?author={{ $post->author->username }}">{{ $post->author->name }}</a>
                                        {{ $post->created_at->diffForHumans() }}</small>
                                </p>
                                <p class="card-text truncated">{{ $post->excerpt }}</p>
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

    <div class="d-flex justify-content-center">
        {{ $posts->links() }}
    </div>

@endsection
