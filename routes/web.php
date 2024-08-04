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

Route::get('/categories', function() {
    return view('categories', [
        'title' => 'Categories',
        'categories' => Category::all()
    ]);
});
Route::get('/categories/{category:slug}', function(Category $category){
    return view('category', [
        'title' => $category->name,
        'posts' => $category->posts,
        'category' => $category->name
    ]);
});

//halaman Author
Route::get('/authors/{author:username}', function(User $author) {
    return view('posts', [
        'title' => 'User Posts',
        'posts' => $author->posts,
    ]);
});