<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>My Blog</title>

		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Nunito+Sans:700%7CNunito:300,600" rel="stylesheet"> 

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css"/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="/css/font-awesome.min.css">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="/css/style.css"/>

    </head>
	<body>

		<!-- Header -->
		<header id="header">
			<!-- Nav -->
			<div id="nav">
				<!-- Main Nav -->
				<div id="nav-fixed">
					<div class="container">
						<!-- logo -->
						<div class="nav-logo">
							<a href="{{route('blog')}}" >
								<h2 style="Margin-top:20px;" >My Blog</h2>
							</a>
						</div>
						<!-- /logo -->

						<!-- nav -->
						<ul class="nav-menu nav navbar-nav">
							<li class="cat-3"><a href="{{route('blog')}}">Home</a></li>
							<li class="cat-3"><a href="{{route('about')}}">About</a></li>
				
              @foreach ($categories as $category)
          <li class="cat-3"><a href="{{route('category',$category->slug)}}">{{$category->title}}</a></li>
          @endforeach
            </ul>
						<!-- /nav -->

						<!-- search & aside toggle -->
						
						<div class="nav-btns">
							<button class="aside-btn" ><i class="fa fa-bars"></i></button>
							<button class="search-btn"><i class="fa fa-search"></i></button>
							<form action="{{route('blog')}}"> 
							<div class="search-form">
								<input class="search-input" type="text" name="term" placeholder="Enter Your Search ...">
								
								<button class="search-close"><i class="fa fa-times"></i></button>
							</div>
						</form>
						</div>
						
						<!-- /search & aside toggle -->
					</div>
				</div>
				<!-- /Main Nav -->

				<!-- Aside Nav -->
				<div id="nav-aside">
					<!-- nav -->
					<div class="section-row">
						<ul class="nav-aside-menu">
							<li><a href="{{route('blog')}}">Home</a></li>
							<li><a href="about.html"></a></li>
              @foreach ($categories as $category)
              <li><a href="{{route('category',$category->slug)}}">{{$category->title}}</a></li>
              @endforeach
						</ul>
					</div>
					<!-- /nav -->

			

					<!-- aside nav close -->
					<button class="nav-aside-close"><i class="fa fa-times"></i></button>
					<!-- /aside nav close -->
				</div>
				<!-- Aside Nav -->
			</div>
			<!-- /Nav -->
		
			@if (isset($show))
		<div id="post-header" class="page-header">
				<div class="background-img" style="background-image: url('/img/background.jpg');"></div>
				<div class="container">
					<div class="row">
						<div class="col-md-10">
							<div class="post-meta">
								<a class="post-category cat-2" href="{{route('category',$category->slug)}}">{{$category->title}}</a>
							<span class="post-date">{{$post->created_at->format('d/m/Y')}}</span>
							</div>
							<h1>{{$post->title}}</h1>
						</div>
					</div>
				</div>
			</div>
			@elseif (isset($index))
				{{-- @include('layouts.feature_post'); --}}
			
		@else
			
			<div class="page-header">
				<div class="container">
					<div class="row">
						<div class="col-md-10">
							<ul class="page-header-breadcrumb">
								<li><a href="{{route('blog')}}">Home</a></li>
							<li>{{$post->category->title}}</li>
							</ul>
							<h1>{{$post->category->title}}</h1>
						</div>
					</div>
				</div>
			</div>
		@endif
		@if($term = request('term'))
		<div class="container">
			<div class="row">
				<div class="col-md-10">
					<ul class="page-header-breadcrumb">
	
					<h1>Search Result for:: {{$term}}</h1>
				</div>
			</div>
		</div>
	</div>
	@endif
		</header>
		<!-- /Header -->

		<!-- section -->
		
		<!-- /section -->
		
		<!-- section display post -->
        <div class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                   <!--content-->
                  @yield('content')
				  @include('layouts.sidebar')
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
		<!-- /section -->

		<!-- Footer -->
		<footer id="footer">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-5">
						<div class="footer-widget">
							<div class="footer-logo">
								<a href="index.html" class="logo"><img src="./img/logo.png" alt=""></a>
							</div>
	
							<div class="footer-copyright">
								<span>&copy; 
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | To Heang Seakhong 
</span>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="row">
							<div class="col-md-6">
								<div class="footer-widget">
									<h3 class="footer-title">About Us</h3>
									<ul class="footer-links">
									<li><a href="{{route('about')}}">About Us</a></li>
			
									
									</ul>
								</div>
							</div>
						
						</div>
					</div>
          <div class="col-md-3">
            <div class="footer-widget">
              <h3 class="footer-title">Catagories</h3>
              <ul class="footer-links">
                @foreach ($categories as $category)
                <li><a href="{{route('category',$category->slug)}}">{{$category->title}}</a></li>
                @endforeach
              </ul>
            </div>
          </div>
			

				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</footer>
		<!-- /Footer -->

		<!-- jQuery Plugins -->
		<script src="/js/jquery.min.js"></script>
		<script src="/js/bootstrap.min.js"></script>
		<script src="/js/main.js"></script>

	</body>
</html>
