<?php

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



Route::get('/blog', function () {
    $blog_posts = [
        [
            'title' => "Judul Post Pertama",
            'slug' => 'judul-post-pertama',
            'author' => 'Randi Febriadi',
            'body' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Tempora neque delectus rerum voluptatem tempore. Consectetur eos quo veritatis repudiandae dignissimos dolor placeat libero laboriosam rem, officia obcaecati id magni delectus vitae dolorem unde dolores molestiae, perspiciatis, vel quibusdam cum eius. Doloremque laboriosam itaque earum excepturi blanditiis quisquam neque quia alias non sit. Itaque, dolor. Hic a molestiae quis, quos laboriosam fuga natus dolores! Explicabo harum corporis provident, aliquam asperiores ea fugiat placeat quos velit eius, labore accusantium repellendus, doloribus cumque.'
        ],
        [
            'title' => "Judul Post Kedua",
            'slug' => 'judul-post-kedua',
            'author' => 'Rumzi Rahman',
            'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis, consequatur harum. Deserunt tempora dicta dignissimos quis numquam nesciunt earum quam quia reprehenderit nam dolore, voluptates a odit assumenda repellat doloribus laudantium officia. A eum aperiam, mollitia tempora voluptas consequatur commodi unde ducimus ea voluptates dolores accusamus molestiae excepturi harum dolor tempore maxime sapiente! Vel atque ex fuga ab, tempore dignissimos maiores deserunt amet fugiat sequi voluptate eveniet voluptatem delectus, rem odit, temporibus recusandae. Nobis, ratione rerum! Adipisci, eius provident non modi iusto, animi veritatis ad incidunt ea numquam corporis? Labore ea veniam consectetur eligendi voluptatibus illum. Totam unde fuga sint!'
        ]
        ];
    return view('posts', [
        'title' => 'Posts',
        'posts' => $blog_posts
    ]);
});

// halaman single post
Route::get('posts/{slug}', function($slug) {
    $blog_posts = [
        [
            'title' => "Judul Post Pertama",
            'slug' => 'judul-post-pertama',
            'author' => 'Randi Febriadi',
            'body' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Tempora neque delectus rerum voluptatem tempore. Consectetur eos quo veritatis repudiandae dignissimos dolor placeat libero laboriosam rem, officia obcaecati id magni delectus vitae dolorem unde dolores molestiae, perspiciatis, vel quibusdam cum eius. Doloremque laboriosam itaque earum excepturi blanditiis quisquam neque quia alias non sit. Itaque, dolor. Hic a molestiae quis, quos laboriosam fuga natus dolores! Explicabo harum corporis provident, aliquam asperiores ea fugiat placeat quos velit eius, labore accusantium repellendus, doloribus cumque.'
        ],
        [
            'title' => "Judul Post Kedua",
            'slug' => 'judul-post-kedua',
            'author' => 'Rumzi Rahman',
            'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis, consequatur harum. Deserunt tempora dicta dignissimos quis numquam nesciunt earum quam quia reprehenderit nam dolore, voluptates a odit assumenda repellat doloribus laudantium officia. A eum aperiam, mollitia tempora voluptas consequatur commodi unde ducimus ea voluptates dolores accusamus molestiae excepturi harum dolor tempore maxime sapiente! Vel atque ex fuga ab, tempore dignissimos maiores deserunt amet fugiat sequi voluptate eveniet voluptatem delectus, rem odit, temporibus recusandae. Nobis, ratione rerum! Adipisci, eius provident non modi iusto, animi veritatis ad incidunt ea numquam corporis? Labore ea veniam consectetur eligendi voluptatibus illum. Totam unde fuga sint!'
        ]
        ];

    $post = [];
    foreach($blog_posts as $blog) {
        if ($blog['slug'] === $slug) {
            $post = $blog;
        }
    }
   return view('post', [
    'title' => 'Single Post',
    'post' => $post
   ]);
});