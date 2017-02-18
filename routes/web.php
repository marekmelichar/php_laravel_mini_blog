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
// Route::resource('post', 'HomeController@store', ['only'=> ['title','text']]);
// Route::resource('post', 'HomeController@store');
Route::resource('post', 'PostController');
// Route::resource('post/create', 'HomeController@create');
// Route::get('post/{id}', 'HomeController@show');



Auth::routes();

Route::get('/', 'PostController@index');

Route::get('tag/{id}', 'TagController@show');

Route::get('user/{id}', 'UserController@show');
