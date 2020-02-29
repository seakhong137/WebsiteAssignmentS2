@extends('layouts.backend.main')

@section('title', 'MyBlog | Users')

@section('content')

    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          Blog
          <small>Display All Users</small>
        </h1>
        <ol class="breadcrumb">
          <li>
              <a href="{{ url('/home') }}"><i class="fa fa-dashboard"></i> Dashboard</a>
          </li>
          <li><a href="{{ route('users.index') }}">Users</a></li>
          <li class="active">All Users</li>
        </ol>
      </section>

      <!-- Main content -->
      <section class="content">
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                    <div class="pull-left">
                        <a href="{{ route('users.create') }}" class="btn btn-success">Add New</a>
                    </div>
                    <div class="pull-right">

                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body ">
                 @include('backend.users.message')
                    @if (! $users->count())
                        <div class="alert alert-danger">
                            <strong>No record found</strong>
                        </div>
                    @else
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <td width="60">Action</td>
                                    <td  width="120">User Name</td>
                                    <td width="150">Email</td>
                                    <td width='50'> Role</td>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    $currentUser=auth()->user();
                                ?>
                                @foreach($users as $user)

                                    <tr>
                                        <td>
                                       @php
                                       
                                      @endphp 
                                            <a href="{{ route('users.edit', $user->id) }}" class="btn btn-xs btn-default">
                                                <i class="fa fa-edit"></i>
                                            </a>
                                            @if($user->id==config('cms.default_user_id')|| $user->id==$currentUser->id)
                                            <button type="submit" onclick="return false" class="btn btn-xs btn-danger disabled">
                                                <i class="fa fa-times"></i>
                                            </button>
                                            @else
                                        <a href="{{route('users.confirm',$user->id)}}" class="btn btn-xs btn-danger">
                                                <i class="fa fa-times"></i>
                                            </a>
                                            @endif
                                          
                                        </td>
                                        <td>{{ $user->name }}</td>
                                        <td>{{ $user->email}}</td>
                                    <td>{{$user->roles->first()->display_name}}</td>
                                    </tr>

                                @endforeach
                            </tbody>
                        </table>
                    @endif
                </div>
                <!-- /.box-body -->
                <div class="box-footer clearfix">
                    <div class="pull-left">
                        {{ $users->appends(Request::query())->render() }}
                    </div>
                    <div class="pull-right">
                        <small>{{ $usersCount }} {{ str_plural('Item', $usersCount) }}</small>
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
