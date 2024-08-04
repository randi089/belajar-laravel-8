@extends('layouts.main')

@section('container')
    <h1 class="mb-5">Post Category : {{ $category }}</h1>
    @foreach ($posts as $post)
    <article class="mb-5">
        <h2><a href="/posts/{{ $post->slug }}">{{ $post->title }}</a></h2>
        <p class="text-muted">By. <a href="/authors/{{ $post->author->username }}">{{ $post->author->name }}</a> in <a href="/categories/{{ $post->category->slug }}">{{ $post->category->name }}</a></p>

        <p>{{ $post->excerpt }}</p>
    </article>
    @endforeach
@endsection