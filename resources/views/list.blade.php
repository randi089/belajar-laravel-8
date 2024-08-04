@extends('layouts.main')

@section('container')
    <div class="row justify-content-center">
        <div class="col-md-4">
            <h1 class="mb-5 text-center">{{ $title_author . $title }}</h1>
            <ul class="list-group">
                @foreach ($authors as $author)
                    <li class="list-group-item text-center"><a href="/authors/{{ $author->username }}">{{ $author->name }}</a>
                    </li>
                @endforeach
            </ul>
        </div>
    </div>
    <div class="row my-3">
        <h1 class="mb-5 text-center">{{ $title_category . $title }}</h1>
        @foreach ($categories as $category)
            <div class="col-md-4">
                <a href="/categories/{{ $category->slug }}">
                    <div class="card bg-dark text-white">
                        <img src="../img/post/{{ $category->slug }}.jpg" class="card-img" alt="{{ $category->name }}">
                        <div class="card-img-overlay d-flex align-items-center p-0">
                            <h5 class="card-title flex-fill bg-transp none p-4 text-center text-white fs-3">
                                {{ $category->name }}</h5>
                        </div>
                    </div>
                </a>
            </div>
        @endforeach
    </div>
@endsection
