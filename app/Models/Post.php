<?php

namespace App\Models;


class Post
{
    private static $blog_posts = [
        [
            'title' => "Judul Post Pertama",
            'slug' => 'judul-post-pertama',
            'author' => 'Randi Febriadi',
            'body' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Tempora neque delectus rerum voluptatem tempore. Consectetur eos quo veritatis repudiandae dignissimos dolor placeat libero laboriosam rem, officia obcaecati id magni delectus vitae dolorem unde dolores molestiae, perspiciatis, vel quibusdam cum eius. Doloremque laboriosam itaque earum excepturi blanditiis quisquam neque quia alias non sit. Itaque, dolor. Hic a molestiae quis, quos laboriosam fuga natus dolores! Explicabo harum corporis provident, aliquam asperiores ea fugiat placeat quos velit eius, labore accusantium repellendus, doloribus cumque.'
        ],
        [
            'title' => "Judul Post Randi",
            'slug' => 'judul-post-kedua',
            'author' => 'Rumzi Rahman',
            'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis, consequatur harum. Deserunt tempora dicta dignissimos quis numquam nesciunt earum quam quia reprehenderit nam dolore, voluptates a odit assumenda repellat doloribus laudantium officia. A eum aperiam, mollitia tempora voluptas consequatur commodi unde ducimus ea voluptates dolores accusamus molestiae excepturi harum dolor tempore maxime sapiente! Vel atque ex fuga ab, tempore dignissimos maiores deserunt amet fugiat sequi voluptate eveniet voluptatem delectus, rem odit, temporibus recusandae. Nobis, ratione rerum! Adipisci, eius provident non modi iusto, animi veritatis ad incidunt ea numquam corporis? Labore ea veniam consectetur eligendi voluptatibus illum. Totam unde fuga sint!'
        ]
        ];

    public static function all() {
        return collect(self::$blog_posts);
    }
    
    public static function find($slug) {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}
