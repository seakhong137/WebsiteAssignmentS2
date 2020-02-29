<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    { 
      $this->call(UserTableseeder::class);
      $this->call(PostTableseeder::class);
      $this->call(categoriesTableSeeder::class);
    
      $this->call(RoleTableSeeder::class);
      $this->call(PermissionTableSeeder::class);
      $this->call(CommentTableSeeder::class);
    }
}
