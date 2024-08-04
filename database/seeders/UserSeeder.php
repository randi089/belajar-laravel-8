<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::factory()->create([
            'name' => 'Randi Febriadi',
            'username' => 'randi1',
            'email' => 'randifebriadi@gmail.com',
        ]);

        User::factory()->create([
            'name' => 'Tasya Aryati Sakinah',
            'username' => 'tasya2',
            'email' => 'tasyaaryati@gmail.com',
        ]);

        User::factory()->create([
            'name' => 'Rumzi Rahman',
            'username' => 'rumzi3',
            'email' => 'rumzirahman@gmail.com',
        ]);
    }
}
