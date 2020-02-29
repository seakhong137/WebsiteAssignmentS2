<?php

namespace App\Http\Controllers\Backend;

use App\Post;
use Illuminate\Http\Request;
use App\Http\Requests;
use Intervention\Image\Facades\Image;
use PhpParser\Node\Expr\BinaryOp\Pow;

class BlogController extends BackendController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    protected $uploadPath;

    public function  __construct()
    {
        parent::__construct();
        $this->uploadPath= public_path('img');
    }
    public function index(Request $request)
    {
        // $posts     = Post::with('category', 'author')->latest()->paginate($this->limit);
        // $postCount = Post::count();
      
        if (($status = $request->get('status')) && $status == 'published')
        {
            $posts       = Post::published()->with('category', 'author')->latest()->paginate($this->limit);
            $postCount   = Post::published()->count();
        }
        elseif ($status == 'scheduled')
        {
            $posts       = Post::scheduled()->with('category', 'author')->latest()->paginate($this->limit);
            $postCount   = Post::scheduled()->count();
        }
        elseif ($status == 'draft')
        {
            $posts       = Post::draft()->with('category', 'author')->latest()->paginate($this->limit);
            $postCount   = Post::draft()->count();
        }
        elseif ($status == 'own')
        {
            $posts       = $request->user()->posts()->with('category', 'author')->latest()->paginate($this->limit);
            $postCount   = $request->user()->posts()->count();
        }
        else
        {
            $posts       = Post::with('category', 'author')->latest()->paginate($this->limit);
            $postCount   = Post::count();
        }

        $statusList = $this->statusList($request);
      //  return view("backend.blog.index", compact('posts', 'postCount'));
   
      return view("backend.blog.index", compact('posts', 'postCount',  'statusList'));
    }
    private function statusList($request)
    {
        return [
            'own'       => $request->user()->posts()->count(),
            'all'       => Post::count(),
            'published' => Post::published()->count(),
            'scheduled' => Post::scheduled()->count(),
            'draft'     => Post::draft()->count(),
           
        ];
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Post $post)
    {
    
        return view("backend.blog.create",compact('post'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Requests\PostRequest $request)
    {
        //  $this->validate($request,[
        //      'title'    => 'required',
        //      'slug'     =>  'required|unique:posts',
        //      'body'     =>  'required',
        //      'published_at' => 'date_format:Y-m-d H:i:s',
        //     'category_id'   => 'required',
        //     'img'   => 'mimes:jpg,jpeg,bmp,png',
        //  ]);
        $data=$this->handleRequest($request);
     $request->user()->posts()->create($data);
         //  dd($request->user()->posts());
        return redirect('/backend/blog')->with('message', 'Your post was created successfully!');
    }
    private function handleRequest($request)
    {
        $data=$request->all();
        if($request->hasFile('img'))
        {
            $image=$request->file('img');
            $fileName=$image->getClientOriginalName();
           $destination=$this->uploadPath;
            $successUploaded=$image->move($destination,$fileName);
            
            if($successUploaded)
            {
                $extension =$image->getClientOriginalExtension();
                $thumbnail=str_replace(".$extension","_thumb.{$extension}",$fileName);
               
                Image::make($destination . '/' . $fileName)->resize(250,170)->save($destination . '/' . $thumbnail);
            }
            $data['img']=$fileName;
        }
        return $data;
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
     
      $post = Post::findOrFail($id);
      return view("backend.blog.edit", compact('post'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Requests\PostRequest $request, $id)
    {
        $post= Post::findOrFail($id);
        $data=$this->handleRequest($request);
        $post->update($data);
        return redirect('/backend/blog')->with('message', 'Your post was edited successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post= Post::findOrFail($id)->delete();
       return redirect('/backend/blog')->with('message', 'Your post was deleted successfully!');
    }
}
