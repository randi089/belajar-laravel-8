<?php

use App\Http\Controllers\PostController;
use App\Models\Category;
use App\Models\User;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('home', [
        'title' => 'Home'
    ]);
});
Route::get('/about', function () {
    return view('about', [
        'title' => 'About',
        "name" => "Randi Febriadi",
        "email" => "randifebriadi@gmail.com",
        "image" => "1.jpg"
    ]);
});
Route::get('/blog', [PostController::class, 'index']);

// halaman single post
Route::get('/posts/{post:slug}', [PostController::class, 'show']);

Route::get('/list', function() {
    return view('list', [
        'title' => 'List',
        'title_category' => 'Categories ',
        'title_author' => 'Authors ',
        'categories' => Category::all(),
        'authors' => User::all()
    ]);
});
Route::get('/categories/{category:slug}', function(Category $category){
    return view('posts', [
        'title' => $category->name,
        'posts' => $category->posts->load('category', 'author'),
        'type' => 'Post by Category :'
    ]);
});

//halaman Author
Route::get('/authors/{author:username}', function(User $author) {
    return view('posts', [
        'title' => $author->name,
        'posts' => $author->posts->load('category', 'author'),
        'type' => 'Post by Author :'
    ]);
});