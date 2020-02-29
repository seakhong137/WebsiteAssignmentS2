<?php

use Illuminate\Database\Seeder;

class categoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('categories')->truncate();
        
        DB::table('categories')->insert([
            'title'=> 'Web Design',
            'slug'=> 'web-design'
        ]);
        DB::table('categories')->insert([
            'title'=> 'Javascript',
            'slug'=> 'javascript'
        ]);
        DB::table('categories')->insert([
            'title'=> 'Asp.Net',
            'slug'=> 'asp.net'
        ]);
        DB::table('categories')->insert([
            'title'=> 'Facebook',
            'slug'=> 'facebook'
        ]);
        DB::table('categories')->insert([
            'title'=> 'C#',
            'slug'=> 'csharp'
        ]);
    
        for ($post_id=1;$post_id<10;$post_id++)
        {
           $category_id=rand(1,5);
            DB::table('posts')->where('id',$post_id)->update(['category_id'=>$category_id]);
        }
    }

   
}
