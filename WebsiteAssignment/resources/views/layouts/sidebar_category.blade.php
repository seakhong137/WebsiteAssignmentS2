<div class="col-md-4">
    <!-- ad -->
    <div class="aside-widget text-center">
        <a href="#" style="display: inline-block;margin: auto;">
            <img class="img-responsive" src="./img/ad-1.jpg" alt="">
        </a>
    </div>
    <!-- /ad -->
    
    <!-- catagories -->
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
    
    <!-- tags -->
    {{-- <div class="aside-widget">
        <div class="tags-widget">
            <ul>
                <li><a href="#">Chrome</a></li>
                <li><a href="#">CSS</a></li>
                <li><a href="#">Tutorial</a></li>
                <li><a href="#">Backend</a></li>
                <li><a href="#">JQuery</a></li>
                <li><a href="#">Design</a></li>
                <li><a href="#">Development</a></li>
                <li><a href="#">JavaScript</a></li>
                <li><a href="#">Website</a></li>
            </ul>
        </div>
    </div> --}}
    <!-- /tags -->
</div>