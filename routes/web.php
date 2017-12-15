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

Route::get('/', 'BaseController@index');
Route::get('/title', 'BaseController@title');
Route::get('/create', 'CreateController@index');

Route::post('/sound/insert', 'SoundController@insertOne');
Route::post('/sound/update', 'SoundController@updateOneAction');

Route::get('/sound/delete/{id}', 'SoundController@deleteOne');
Route::get('/sound/update/{id}', 'SoundController@updateOne');
