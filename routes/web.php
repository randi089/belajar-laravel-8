<?php

use App\Models\User;
use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;

Route::get('/', function () {
    return view('home', [
        'title' => 'Home',
        'active' => 'home',
    ]);
});
Route::get('/about', function () {
    return view('about', [
        'title' => 'About',
        'active' => 'about',
        "name" => "Randi Febriadi",
        "email" => "randifebriadi@gmail.com",
        "image" => "1.jpg"
    ]);
});
Route::get('/posts', [PostController::class, 'index']);

// halaman single post
Route::get('/posts/{post:slug}', [PostController::class, 'show']);

Route::get('/list', function() {
    return view('list', [
        'title' => 'List',
        'active' => 'list',
        'title_category' => 'Categories ',
        'title_author' => 'Authors ',
        'categories' => Category::all(),
        'authors' => User::all()
    ]);
});

// Login
Route::get('/login', [LoginController::class, 'index']);

// Register
Route::get('/register', [RegisterController::class, 'index']);
Route::post('/register', [RegisterController::class, 'store']);