@extends('layouts.main')

@section('container')
    <h1 class="mb-5">{{ $title }} List</h1>
    <div class="row">
        <div class="col-md-4">
            <ul class="list-group">
                @foreach ($categories as $category)
                    <li class="list-group-item"><a href="/categories/{{ $category->slug }}">{{ $category->name }}</a></li>
                @endforeach
            </ul>
        </div>
    </div>
@endsection