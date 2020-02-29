<?php

use Illuminate\Database\Seeder;
use Faker\Factory;

class PostTableseeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {   DB::statement('SET FOREIGN_KEY_CHECKS=0');
        $faker = Factory::create();
        DB::table('posts')->truncate();

      //  $posts=[];
      
        for($i=1; $i<=20;$i++)
        {
            $image ="Post_Image_".rand(1,5).".jpg";
           
         
           $posts[]=
            [
           // DB::table('posts')->insert([
            'author_id'=> rand(1,3),
                'title'=>$faker->sentence(rand(1,14)),
                'slug'=>$faker->slug(),
                'excerpt'=>$faker->text(rand(250,255)),
                'body' =>$faker->paragraphs(rand(5,7),true),
                'img'=> $image,
                'created_at'=> today(),
                'updated_at' => today(),
                'published_at'=>today(),
                'category_id'=>rand(1,2),
                'view_count'=>rand(1,20),
           ];
        //]);
        }
        DB::table('posts')->insert($posts);
    }
}
