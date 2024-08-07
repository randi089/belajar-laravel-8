<?php

use App\Http\Controllers\DashboardPostController;
use App\Models\User;
use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;

Route::get('/', function () {
    return view('home', [
        'title' => 'Home',
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
Route::get('/posts', [PostController::class, 'index']);

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

// Login
Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, 'authenticate']);
// Logout
Route::post('/logout', [LoginController::class, 'logout']);

// Register
Route::get('/register', [RegisterController::class, 'index'])->middleware('guest');
Route::post('/register', [RegisterController::class, 'store']);

// Dashboard
Route::get('/dashboard', function() {
    return view('dashboard.index', [
        'title' => 'Dashboard'
    ]);
})->middleware('auth');

// Slug
Route::get('/dashboard/posts/checkSlug', [DashboardPostController::class, 'checkSlug'])->middleware('auth');

// Resource
Route::resource('/dashboard/posts', DashboardPostController::class)->middleware('auth');