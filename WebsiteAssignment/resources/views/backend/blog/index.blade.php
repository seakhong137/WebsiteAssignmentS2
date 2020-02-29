@extends('layouts.backend.main')

@section('title', 'MyBlog | Blog index')

@section('content')

    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          Blog
          <small>Display All blog posts</small>
        </h1>
        <ol class="breadcrumb">
          <li>
              <a href="{{ url('/home') }}"><i class="fa fa-dashboard"></i> Dashboard</a>
          </li>
          <li><a href="{{ route('blog.index') }}">Blog</a></li>
          <li class="active">All Posts</li>
        </ol>
      </section>

      <!-- Main content -->
      <section class="content">
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                    <div class="pull-left">
                        <a href="{{ route('blog.create') }}" class="btn btn-success">Add New</a>
                    </div>
                </div>
                <div class="pull-right" style="padding:7px 0;">
                  <?php $links = [] ?>
                  @foreach($statusList as $key => $value)
                      @if($value)
                          <?php $selected = Request::get('status') == $key ? 'selected-status' : '' ?>
                          <?php $links[] = "<a class=\"{$selected}\" href=\"?status={$key}\">" . ucwords($key) . "({$value})</a>" ?>
                      @endif
                  @endforeach
                  {!! implode(' | ', $links) !!}
              </div>
          </div>
                <!-- /.box-header -->
                <div class="box-body ">
                 @include('backend.blog.message')
                    @if (! $posts->count())
                        <div class="alert alert-danger">
                            <strong>No record found</strong>
                        </div>
                    @else
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <td width="80">Action</td>
                                    <td>Title</td>
                                    <td width="120">Author</td>
                                    <td width="150">Category</td>
                                    <td width="170">Date Created</td>
                                </tr>
                            </thead>
                            <tbody>
                              @php
                                $request=request();
                                @endphp
                                @foreach($posts as $post)

                                    <tr>
                                        <td>
                                       @php
                                       
                                      @endphp 
                                       
                                          {!!Form::open(['method' =>'DELETE',
                                                         
                                                          'route'=>['blog.destroy',$post->id]
                                                                  ])!!}
                                                @if(check_user_permissions($request,"Blog@edit",$post->id))

                                          <a href="{{ route('blog.edit', $post->id) }}" class="btn btn-xs btn-default">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                            @else
                                            <a href="#" class="btn btn-xs btn-default hidden">
                                              <i class="fa fa-edit"></i>
                                          </a>
                                            @endif
                                            @if(check_user_permissions($request,"Blog@destroy",$post->id))
                                            <button type="submit" class="btn btn-xs btn-danger">
                                                <i class="fa fa-times"></i>
                                            </button>
                                            @else
                                            <button type="submit" class="btn btn-xs btn-danger hidden">
                                              <i class="fa fa-times"></i>
                                          </button>
                                          
                                            @endif

                                            {!!Form::close()!!}
                                        </td>
                                        <td>{{ $post->title }}</td>
                                        <td>{{ $post->author->name }}</td>
                                        <td>{{ $post->category->title }}</td>
                                        <td>
                                            <abbr title="{{ $post->dateFormatted(true) }}">{{ $post->dateFormatted() }}</abbr> |
                                            {!! $post->publicationLabel() !!}
                                        </td>
                                    </tr>

                                @endforeach
                            </tbody>
                        </table>
                    @endif
                </div>
                <!-- /.box-body -->
                <div class="box-footer clearfix">
                    <div class="pull-left">
                        {{ $posts->render() }}
                    </div>
                    <div class="pull-right">
                        <small>{{ $postCount }} {{ str_plural('Item', $postCount) }}</small>
                    </div>
                </div>
              </div>
              <!-- /.box -->
            </div>
          </div>
        <!-- ./row -->
      </section>
      <!-- /.content -->
    </div>

@endsection

@section('script')
    <script type="text/javascript">
        $('ul.pagination').addClass('no-margin pagination-sm');
    </script>
@endsection
