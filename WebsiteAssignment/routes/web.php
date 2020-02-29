<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*Route::get('/', function () {
    return('blog.index')
});*/
Route::get('/',[
    'uses'=>'BlogController@index',
    'as'=>'blog'
    ]);
Route::get('/blog/{post}', [
    'uses'=>'BlogController@show',
    'as'=>'blog.show'
]);

Route::get('/category/{category}',[
    'uses'=>'BlogController@category',
    'as'=>'category'
    ]);
Route::get('/author/{author}',[
        'uses'=>'BlogController@author',
        'as'=>'author'
        ]);

Route::post('/blog/{post}/comments',[
        'uses'=>'CommentsController@store',
        'as' =>'blog.comments'
]);
Route::get('/about',[
    'uses'=>'BlogController@about',
    'as'=>'about'
    ]);
//Route::get('/category/{category}', ['uses'=>'BlogController@category','as'=>'category'])->name('slug');
Auth::routes();

Route::get('/home', 'Backend\HomeController@index')->name('home');
Route::get('logout', 'Auth\LoginController@logout');

//Route::resource('/backend/blog','Backend\BlogController');
 Route::get('/backend/blog',['uses'=>'Backend\BlogController@index','as'=>'blog.index']);
 Route::get('/backend/blog/create',['uses'=>'Backend\BlogController@create','as'=>'blog.create']);
 Route::get('/backend/blog/post{id}/edit',['uses'=>'Backend\BlogController@edit','as'=>'blog.edit']);
Route::delete('/backend/blog/post{id}/destroy',['uses'=>'Backend\BlogController@destroy','as'=>'blog.destroy']);
// Route::get('/backend/blog/destroy','Backend\BlogController@destroy');
Route::post('/backend/blog/store',['uses'=>'Backend\BlogController@store','as'=>'blog.store']);
Route::put('/backend/blog/post{id}',['uses'=>'Backend\BlogController@update','as'=>'blog.update']);
// Route::get('/backend/blog', 'Backend\BlogController@index')->name('index');


Route::get('/backend/categories',['uses'=>'Backend\CategoriesController@index','as'=>'categories.index']);
Route::get('/backend/categories/create',['uses'=>'Backend\CategoriesController@create','as'=>'categories.create']);
Route::get('/backend/categories/{id}/edit',['uses'=>'Backend\CategoriesController@edit','as'=>'categories.edit']);
Route::delete('/backend/categories/{id}/destroy',['uses'=>'Backend\CategoriesController@destroy','as'=>'categories.destroy']);
Route::post('/backend/categories/store',['uses'=>'Backend\CategoriesController@store','as'=>'categories.store']);
Route::put('/backend/categories/{id}',['uses'=>'Backend\CategoriesController@update','as'=>'categories.update']);


Route::get('/backend/users',['uses'=>'Backend\UsersController@index','as'=>'users.index']);
Route::get('/backend/users/create',['uses'=>'Backend\UsersController@create','as'=>'users.create']);
Route::get('/backend/users/{id}/edit',['uses'=>'Backend\UsersController@edit','as'=>'users.edit']);
Route::delete('/backend/users/{id}/destroy',['uses'=>'Backend\UsersController@destroy','as'=>'users.destroy']);
Route::post('/backend/users/store',['uses'=>'Backend\UsersController@store','as'=>'users.store']);
Route::put('/backend/users/{id}',['uses'=>'Backend\UsersController@update','as'=>'users.update']);


// Route::get('/backend/users/{users}/confirm',[
//             'users' => 'Backend\UsersController@confirm',
//             'as' =>'users.confirm'
// ]);
Route::get('/backend/users/{users}/confirm',['uses'=>'Backend\UsersController@confirm','as'=>'users.confirm']);

Route::get('/backend/home/edit-account',['uses'=>'Backend\HomeController@edit','as'=>'home.edit']);

// Route::get('/edit-account', 'Backend\HomeController@edit');
Route::put('/edit-account', 'Backend\HomeController@update');
