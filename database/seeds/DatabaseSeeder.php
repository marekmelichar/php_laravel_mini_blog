<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
//        Model::unguard();

//        factory(App\User::class, 2)->create();
//        factory(App\Post::class, 3)->create();
        factory(App\Tag::class, 5)->create();

//        Model::reguard();
    }
}
