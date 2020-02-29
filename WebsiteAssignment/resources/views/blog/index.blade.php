@extends('layouts.main')
@section('content')
<div class="col-md-8">
    <div class="row">
        <div class="col-md-12">
      
        </div>
        <!-- post -->
        @foreach ($posts as $post)
        <div class="col-md-12">
            <div class="post post-row">
            <a class="post-img" href="{{route('blog.show',$post->slug)}}"><img src="{{$post->image_url}}" alt=""></a>
               
            <div class="post-body">
                    <div class="post-meta">
                    <a class="post-category cat-2" href="">{{$post->category->title}}</a>
                        <span class="post-date">{{$post->date}}</span>
                    </div>
                <h3 class="post-title"><a href="{{route('blog.show',$post->slug)}}">{{$post->title}}</a></h3>
                {!!$post->excerpt_html!!}
            </div>
            </div>
        </div>
        @endforeach
        <!-- /post -->
        
        <div class="col-md-12">
            {{-- <div class="section-row">
                <button class="primary-button center-block">Load More</button>
            </div> --}}
            <nav>
                {{ $posts->appends(request()->only(['term']))->links() }}
              </nav>
        </div>
    </div>
</div>
@endsection