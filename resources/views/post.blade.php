@extends('layouts.main')

@section('container')
<h1 class="mb-5">Halaman Post</h1>

<article>
    <h2>{{ $post->title }}</h2>
    <p class="text-muted">By. <a href="/authors/{{ $post->author->username }}">{{ $post->author->name }}</a> in <a href="/categories/{{ $post->category->slug }}">{{ $post->category->name }}</a></p>
    {!! $post->body !!}
</article>

<a href="/blog">&laquo; Back to Posts</a>
@endsection