<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Post;
use App\User;

class BlogController extends Controller
{
  protected $limit = 5;
  public function index()
  {
    $categories = Category::with(['posts' => function ($query) {
      $query->published();
    }])->orderBy('title', 'asc')->get();
    //\DB::enableQueryLog();
    $index=1;
    $popularPosts = Post::published()->popular()->take(4)->get();
    $posts = Post::with('author','category','comments')->latestFirst()->published()->filter(request('term'))->paginate($this->limit); //all();
    return view('blog.index', compact('posts', 'categories','popularPosts','index'));
    //view('blog.index',compact('posts'))->render();

    //   dd(\DB::getQueryLog());
  }
  public function show(Post $post)
  {
    //$viewCount =$post->view_count+1;
    //$post->update(['view_count'=>$viewCount]);
    $show=1;
    $post->increment('view_count');
    $popularPosts = Post::published()->popular()->take(4)->get();
    $categories = Category::with(['posts' => function ($query) {
      $query->published();
    }])->orderBy('title', 'asc')->get();
    $postComments=$post->comments()->paginate(4);
    //   $post =Post::published()->findOrFail($id); 
    return view('blog.show', compact('post', 'categories', 'popularPosts','postComments','show'));
  }
  public function category(Category $category)
  {


    $id = $category->id;
    $categoryName=$category->title;
    $categories = Category::with(['posts' => function ($query) {
      $query->published();
    }])->orderBy('title', 'asc')->get();
    $posts = 
      Post::with('author','category','comments')
      ->latestFirst()
      ->published()->where('category_id', $id)
      ->paginate($this->limit);
      $popularPosts = Post::published()->popular()->take(4)->get();
    return view('blog.index', compact('posts', 'categories', 'popularPosts','categoryName'));
    //        dd(\DB::getQueryLog());
  }
    //   public function category(Category $category){
    // \DB::enableQueryLog();
    //$categoryName = DB::table('categories')
    //  ->where('id', '=', $id) ->get();
    //$Name = Category::where('id',$id)->select('title')->get('title');
  public function author(User $author)
  {
    $authorName = $author->name;
    $id = $author->id;
    $categories = Category::with(['posts' => function ($query) {
      $query->published();
    }])->orderBy('title', 'asc')->get();
    $popularPosts = Post::published()->popular()->take(4)->get();
    // \DB::enableQueryLog();
    $posts = //$author->posts()

      Post::with('category','comments')
      ->latestFirst()
      ->published()->where('author_id', $id)
      ->paginate($this->limit);

    return view("blog.index", compact('posts', 'authorName', 'categories', 'popularPosts'));
  }
 
  public function about()
  {
    $categories = Category::with(['posts' => function ($query) {
      $query->published();
    }])->orderBy('title', 'asc')->get();
    //\DB::enableQueryLog();
    $index=1;
    $popularPosts = Post::published()->popular()->take(4)->get();
    $posts = Post::with('author','category','comments')->latestFirst()->published()->filter(request('term'))->paginate($this->limit); //all();
    return view('blog.about', compact('posts', 'categories','popularPosts','index'));
  
  }
}
