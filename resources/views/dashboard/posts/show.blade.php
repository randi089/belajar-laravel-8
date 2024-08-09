@extends('dashboard.layouts.main')

@section('container')
    <div class="container my-3">
        <div class="row">
            <div class="col-lg-8">
                <h1 class="mb-2">{{ $post->title }}</h1>

                <a href="/dashboard/posts" class="btn btn-primary"><span data-feather="arrow-left"></span> Back to all my
                    posts</a>
                <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning"><span data-feather="edit"></span>
                    Edit</a>
                <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline-block">
                    @method('delete')
                    @csrf
                    <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure?')"><span
                            data-feather="trash-2"></span> Delete</button>
                </form>

                @if ($post->image)
                    <div class="height">
                        <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}"
                            class="img-fluid full mt-3">
                    </div>
                @else
                    <img src="/img/post/{{ $post->category->slug }}.jpg" alt="{{ $post->category->name }}"
                        class="img-fluid full mt-3">
                @endif

                <article class="my-3 fs-5">
                    {!! $post->body !!}
                </article>

            </div>
        </div>
    </div>
@endsection
