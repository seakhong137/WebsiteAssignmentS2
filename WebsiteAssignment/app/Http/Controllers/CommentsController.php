<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Comment;
use App\Post;
class CommentsController extends Controller
{
    public function store(Post $post,Requests\CommentsStoreRequest $request)
    {
        $post->createComment($request->all());

        return redirect()->back()->with('message', "Your comment successfully send.");
    }
}
