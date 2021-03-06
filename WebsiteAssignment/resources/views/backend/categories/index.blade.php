@extends('layouts.backend.main')

@section('title', 'MyBlog | Categories')

@section('content')

    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          Blog
          <small>Display All Categories</small>
        </h1>
        <ol class="breadcrumb">
          <li>
              <a href="{{ url('/home') }}"><i class="fa fa-dashboard"></i> Dashboard</a>
          </li>
          <li><a href="{{ route('categories.index') }}">Categories</a></li>
          <li class="active">All Categories</li>
        </ol>
      </section>

      <!-- Main content -->
      <section class="content">
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                    <div class="pull-left">
                        <a href="{{ route('categories.create') }}" class="btn btn-success">Add New</a>
                    </div>
                    <div class="pull-right">

                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body ">
                 @include('backend.Categories.message')
                    @if (! $categories->count())
                        <div class="alert alert-danger">
                            <strong>No record found</strong>
                        </div>
                    @else
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <td width="80">Action</td>
                                    <td>Category Name</td>
                                    <td width="120">Post Count</td>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($categories as $category)

                                    <tr>
                                        <td>
                                       @php
                                       
                                      @endphp 
                                       
                                          {!!Form::open(['method' =>'DELETE',
                                                         
                                                          'route'=>['categories.destroy',$category->id]
                                                          
                                                          ])!!}
                                            <a href="{{ route('categories.edit', $category->id) }}" class="btn btn-xs btn-default">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                            @if($category->id==config('cms.default_category_id'))
                                            <button type="submit" onclick="return false" class="btn btn-xs btn-danger disabled">
                                                <i class="fa fa-times"></i>
                                            </button>
                                            @else
                                            <button type="submit" onclick="return confirm('Are you sure');" class="btn btn-xs btn-danger">
                                                <i class="fa fa-times"></i>
                                            </button>
                                            @endif
                                            {!!Form::close()!!}
                                        </td>
                                        <td>{{ $category->title }}</td>
                                        <td>{{ $category->posts->count()}}</td>
                                      
                                    </tr>

                                @endforeach
                            </tbody>
                        </table>
                    @endif
                </div>
                <!-- /.box-body -->
                <div class="box-footer clearfix">
                    <div class="pull-left">
                        {{ $categories->appends(Request::query())->render() }}
                    </div>
                    <div class="pull-right">
                        <small>{{ $categoriesCount }} {{ str_plural('Item', $categoriesCount) }}</small>
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
