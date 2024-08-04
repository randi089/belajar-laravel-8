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
            'email' => 'randifebriadi@gmail.com',
        ]);

        User::factory()->create([
            'name' => 'Tasya Aryati Sakinah',
            'email' => 'tasyaaryati@gmail.com',
        ]);

        User::factory()->create([
            'name' => 'Rumzi Rahman',
            'email' => 'rumzirahman@gmail.com',
        ]);
    }
}
