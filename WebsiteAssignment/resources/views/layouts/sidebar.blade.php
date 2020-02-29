   <!-- catagories -->
   <div class="col-md-4">
   <div class="aside-widget">
    <div class="section-title">
        <h2>Catagories</h2>
    </div>
    <div class="category-widget">
        <ul>
            @foreach ($categories as $category)
            <li><a href="{{route('category',$category->slug)}}" class="cat-1">{{$category->title}}<span>{{$category->posts->count()}}</span></a></li>
            @endforeach
        </ul>
    </div>
</div>
<!-- /catagories -->

    <!-- post widget -->
    <div class="aside-widget">
        <div class="section-title">
            <h2>Most Read</h2>
        </div>
        @foreach ($popularPosts as $post)
        <div class="post post-widget">
            <a class="post-img" href="{{route('blog.show',$post->slug)}}"><img src="{{$post->image_url}}" alt=""></a>
            <div class="post-body">
                <h3 class="post-title"><a href="{{route('blog.show',$post->slug)}}">{{$post->title}}</a></h3>
            </div>
        </div>
        @endforeach
    </div>

</div>


</div>