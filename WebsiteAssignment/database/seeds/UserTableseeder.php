<?php

use Illuminate\Database\Seeder;
use Faker\Factory;
class UserTableseeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0');
        DB::table('users')->truncate();
        $faker = Factory::create();
        DB::table('users')->insert([
            'name' => 'Seakhong Heang',
            'email' => 'seakhong.heang@gmail.com',
            'password' => bcrypt('admin'),
            'slug'=>'seakhong-heang',
            'bio'=>$faker->paragraphs(3,true),
        ]);
        DB::table('users')->insert([
          'name' => 'Sok San',
          'email' => 'soksan@gmail.com',
          'password' => bcrypt('admin'),
          'slug'=>'sok-san',
          'bio'=>$faker->paragraphs(3,true),
          ]);
          DB::table('users')->insert([
          'name' => 'Dara Kok',
          'email' => 'DaraKok@gmail.com',
          'password' => bcrypt('admin'),
          'slug'=>'dara-kok',
          'bio'=>$faker->paragraphs(3,true),
      ]); 
    }
}
