
  
      @extends('layouts.main')
      @section('content')


					<div class="col-md-8">
						<div class="section-row sticky-container">
							<div class="main-post">
									<figure class="figure-img">
								
								<img class="img-responsive" src="{{$post->image_url}}" alt="">
								</figure>
                {!! $post->body_html !!}
                				{{-- <p>There's lot of hate out there for a text that amounts to little more than garbled words in an old language. The villagers are out there with a vengeance to get that Frankenstein, wielding torches and pitchforks, wanting to tar and feather it at the least, running it out of town in shame.</p>
								<p>One of the villagers, Kristina Halvorson from Adaptive Path, holds steadfastly to the notion that design can’t be tested without real content:</p>
						
								<p>If that's what you think how bout the other way around? How can you evaluate content without design? No typography, no colors, no layout, no styles, all those things that convey the important signals that go beyond the mere textual, hierarchies of information, weight, emphasis, oblique stresses, priorities, all those subtle cues that also have visual and emotional appeal to the reader. Rigid proponents of content strategy may shun the use of dummy copy but then designers might want to ask them to provide style sheets with the copy decks they supply that are in tune with the design direction they require.</p>
								<h3>Summing up, if the copy is diverting attention from the design it’s because it’s not up to task.</h3>
								<p>Typographers of yore didn't come up with the concept of dummy copy because people thought that content is inconsequential window dressing, only there to be used by designers who can’t be bothered to read. Lorem Ipsum is needed because words matter, a lot. Just fill up a page with draft copy about the client’s business and they will actually read it and comment on it. They will be drawn to it, fiercely. Do it the wrong way and draft copy can derail your design review.</p>  --}}
							</div>
				
						</div>

					
						
						<!-- author -->
						<div class="section-row">
							<div class="post-author">
								<div class="media">
									<?php $author = $post->author; ?>
									<div class="media-left">
										<img class="media-object" width="100" height="100" src="{{ $author->gravatar() }} alt="">
									</div>
									<div class="media-body">
										<div class="media-heading">
											<h3>{{$author->name}}</h3>
										</div>
										{{-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> --}}
										{!! $author->bio !!}
										{{-- <ul class="author-social">
											<li><a href="#"><i class="fa fa-facebook"></i></a></li>
											<li><a href="#"><i class="fa fa-twitter"></i></a></li>
											<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
											<li><a href="#"><i class="fa fa-instagram"></i></a></li>
										</ul> --}}
									</div>
								</div>
							</div>
						</div>
						<!-- /author -->

						<!-- comments -->
            @include('blog.comments');
						<!-- /comments -->

					
					</div>
				
      @endsection

