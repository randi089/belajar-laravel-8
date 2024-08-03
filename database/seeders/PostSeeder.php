<?php

namespace Database\Seeders;

use App\Models\Post;
use Illuminate\Database\Seeder;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Post::create([
            'category_id' => 1,
            'title' => 'Judul Pertama',
            'slug' => 'judul-pertama',
            'excerpt' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Id at distinctio accusamus ut culpa, libero consequuntur tenetur eius quibusdam nesciunt, nihil obcaecati animi magni sequi soluta enim nam voluptas cupiditate dolorem rerum reiciendis?',
            'body' => '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Id at distinctio accusamus ut culpa, libero consequuntur tenetur eius quibusdam nesciunt, nihil obcaecati animi magni sequi soluta enim nam voluptas cupiditate dolorem rerum reiciendis? Vel veniam voluptatibus totam corrupti nihil voluptatem soluta tempora quo non numquam quod culpa nam atque doloribus nisi placeat modi assumenda laborum repudiandae, quam est ipsum consequatur? Quisquam, vitae commodi expedita labore maiores quidem voluptate ducimus veritatis ipsa ut, esse recusandae quia ab. Quidem atque esse, officiis nostrum voluptatibus laboriosam fugiat autem quam debitis. Animi debitis totam adipisci mollitia aperiam odio sed natus ratione optio quaerat. Facere!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus animi debitis ipsa, neque nisi alias illo voluptatum molestiae dicta delectus odio optio doloremque vitae quod veniam obcaecati, eum officia vel quisquam. Maxime fugiat ducimus ut deserunt nam sint, architecto necessitatibus temporibus distinctio ipsa ea nesciunt, magnam deleniti provident? Saepe libero voluptas eligendi laboriosam. Error nam illo ipsa laudantium, unde officia id atque fuga asperiores, sed hic vero praesentium, modi vitae temporibus aspernatur delectus eius architecto. Eligendi id sunt quos. Molestiae harum aspernatur recusandae architecto, voluptatum repellat perspiciatis ea illum quos tenetur sequi, labore sapiente possimus ipsum suscipit impedit ducimus voluptas blanditiis nemo aliquid voluptatibus aliquam necessitatibus veritatis! Quam incidunt at, voluptatibus, omnis saepe assumenda ea amet similique fuga qui tenetur optio sunt officia recusandae corporis. Cumque perspiciatis tenetur eligendi sit, soluta corrupti omnis necessitatibus, ea ut accusantium veritatis provident consequatur officia similique fugit vitae amet eum repellendus dolorum optio? Dignissimos.</p>'
        ]);

        Post::create([
            'category_id' => 2,
            'title' => 'Judul Kedua',
            'slug' => 'judul-kedua',
            'excerpt' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Id at distinctio accusamus ut culpa, libero consequuntur tenetur eius quibusdam nesciunt, nihil obcaecati animi magni sequi soluta enim nam voluptas cupiditate dolorem rerum reiciendis?',
            'body' => '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Id at distinctio accusamus ut culpa, libero consequuntur tenetur eius quibusdam nesciunt, nihil obcaecati animi magni sequi soluta enim nam voluptas cupiditate dolorem rerum reiciendis? Vel veniam voluptatibus totam corrupti nihil voluptatem soluta tempora quo non numquam quod culpa nam atque doloribus nisi placeat modi assumenda laborum repudiandae, quam est ipsum consequatur? Quisquam, vitae commodi expedita labore maiores quidem voluptate ducimus veritatis ipsa ut, esse recusandae quia ab. Quidem atque esse, officiis nostrum voluptatibus laboriosam fugiat autem quam debitis. Animi debitis totam adipisci mollitia aperiam odio sed natus ratione optio quaerat. Facere!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus animi debitis ipsa, neque nisi alias illo voluptatum molestiae dicta delectus odio optio doloremque vitae quod veniam obcaecati, eum officia vel quisquam. Maxime fugiat ducimus ut deserunt nam sint, architecto necessitatibus temporibus distinctio ipsa ea nesciunt, magnam deleniti provident? Saepe libero voluptas eligendi laboriosam. Error nam illo ipsa laudantium, unde officia id atque fuga asperiores, sed hic vero praesentium, modi vitae temporibus aspernatur delectus eius architecto. Eligendi id sunt quos. Molestiae harum aspernatur recusandae architecto, voluptatum repellat perspiciatis ea illum quos tenetur sequi, labore sapiente possimus ipsum suscipit impedit ducimus voluptas blanditiis nemo aliquid voluptatibus aliquam necessitatibus veritatis! Quam incidunt at, voluptatibus, omnis saepe assumenda ea amet similique fuga qui tenetur optio sunt officia recusandae corporis. Cumque perspiciatis tenetur eligendi sit, soluta corrupti omnis necessitatibus, ea ut accusantium veritatis provident consequatur officia similique fugit vitae amet eum repellendus dolorum optio? Dignissimos.</p>'
        ]);

        Post::create([
            'category_id' => 3,
            'title' => 'Judul Ketiga',
            'slug' => 'judul-ketiga',
            'excerpt' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Id at distinctio accusamus ut culpa, libero consequuntur tenetur eius quibusdam nesciunt, nihil obcaecati animi magni sequi soluta enim nam voluptas cupiditate dolorem rerum reiciendis?',
            'body' => '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Id at distinctio accusamus ut culpa, libero consequuntur tenetur eius quibusdam nesciunt, nihil obcaecati animi magni sequi soluta enim nam voluptas cupiditate dolorem rerum reiciendis? Vel veniam voluptatibus totam corrupti nihil voluptatem soluta tempora quo non numquam quod culpa nam atque doloribus nisi placeat modi assumenda laborum repudiandae, quam est ipsum consequatur? Quisquam, vitae commodi expedita labore maiores quidem voluptate ducimus veritatis ipsa ut, esse recusandae quia ab. Quidem atque esse, officiis nostrum voluptatibus laboriosam fugiat autem quam debitis. Animi debitis totam adipisci mollitia aperiam odio sed natus ratione optio quaerat. Facere!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus animi debitis ipsa, neque nisi alias illo voluptatum molestiae dicta delectus odio optio doloremque vitae quod veniam obcaecati, eum officia vel quisquam. Maxime fugiat ducimus ut deserunt nam sint, architecto necessitatibus temporibus distinctio ipsa ea nesciunt, magnam deleniti provident? Saepe libero voluptas eligendi laboriosam. Error nam illo ipsa laudantium, unde officia id atque fuga asperiores, sed hic vero praesentium, modi vitae temporibus aspernatur delectus eius architecto. Eligendi id sunt quos. Molestiae harum aspernatur recusandae architecto, voluptatum repellat perspiciatis ea illum quos tenetur sequi, labore sapiente possimus ipsum suscipit impedit ducimus voluptas blanditiis nemo aliquid voluptatibus aliquam necessitatibus veritatis! Quam incidunt at, voluptatibus, omnis saepe assumenda ea amet similique fuga qui tenetur optio sunt officia recusandae corporis. Cumque perspiciatis tenetur eligendi sit, soluta corrupti omnis necessitatibus, ea ut accusantium veritatis provident consequatur officia similique fugit vitae amet eum repellendus dolorum optio? Dignissimos.</p>'
        ]);
    }
}