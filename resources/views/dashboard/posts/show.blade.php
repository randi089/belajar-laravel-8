@extends('dashboard.layouts.main')

@section('container')
    <div class="container my-3">
        <div class="row">
            <div class="col-lg-8">
                <h1>{{ $post->title }}</h1>

                <a href="/dashboard/posts" class="btn btn-primary mt-2"><span data-feather="arrow-left"></span> Back to all my
                    posts</a>
                <a href="" class="btn btn-warning"><span data-feather="edit"></span> Edit</a>
                <a href="" class="btn btn-danger"><span data-feather="trash-2"></span> Delete</a>

                <img src="/img/post/{{ $post->category->slug }}.jpg" alt="{{ $post->category->name }}"
                    class="img-fluid full mt-3">

                <article class="my-3 fs-5">
                    {!! $post->body !!}
                </article>

            </div>
        </div>
    </div>
@endsection
