@extends('layouts.backend.main')

@section('title', 'MyBlog | Edit user')

@section('content')

    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          Blog
          
          <small>Edit User</small>
        </h1>
        <ol class="breadcrumb">
          <li>
              <a href="{{ url('/home') }}"><i class="fa fa-dashboard"></i> Dashboard</a>
          </li>
          <li><a href="{{ route('users.index') }}">User</a></li>
          <li class="active">Edit User</li>
        </ol>
      </section>

      <!-- Main content -->
      <section class="content">
          <div class="row">
              {!! Form::model($user, [
                  'method' => 'PUT',
                  'route'  => ['users.update',$user->id],
                  'files'  => TRUE,
                  'id' => 'user-form'
              ]) !!}
                @include('backend.users.form')

            {!! Form::close() !!}
          </div>
        <!-- ./row -->
      </section>
      <!-- /.content -->
    </div>

@endsection

@include('backend.users.script')

