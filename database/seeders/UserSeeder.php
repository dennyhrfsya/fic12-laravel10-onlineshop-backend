<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        \App\Models\User::factory(9)->create();

        $user = \App\Models\User::create([
            'name' => 'Admin Dega',
            'email' => 'dedut@gmail.com',
            'password' => Hash::make('123456'),
            'phone' => '08123456789',
            'roles' => 'ADMIN',
        ]);
    }
}
