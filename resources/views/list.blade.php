@extends('layouts.main')

@section('container')
    <div class="row">
        <div class="col-md-4">
            <h1 class="mb-5">{{ $title_category.$title }}</h1>
            <ul class="list-group">
                @foreach ($categories as $category)
                    <li class="list-group-item"><a href="/categories/{{ $category->slug }}">{{ $category->name }}</a></li>
                @endforeach
            </ul>
        </div>
        <div class="col-md-4">
            <h1 class="mb-5">{{ $title_author.$title }}</h1>
            <ul class="list-group">
                @foreach ($authors as $author)
                    <li class="list-group-item"><a href="/authors/{{ $author->username }}">{{ $author->name }}</a></li>
                @endforeach
            </ul>
        </div>
    </div>
@endsection