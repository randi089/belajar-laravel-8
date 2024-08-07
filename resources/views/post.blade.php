@extends('layouts.main')

@section('container')
    <div class="container mb-3">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <h1>{{ $post->title }}</h1>
                <p class="text-muted">By. <a href="/posts?author={{ $post->author->username }}">{{ $post->author->name }}</a>
                    in <a href="/posts?category={{ $post->category->slug }}">{{ $post->category->name }}</a></p>
                <img src="/img/post/{{ $post->category->slug }}.jpg" alt="{{ $post->category->name }}" class="img-fluid full">

                <article class="my-3 fs-5">
                    {!! $post->body !!}
                </article>

                <a href="/posts">&laquo; Back to Posts</a>
            </div>
        </div>
    </div>
@endsection
