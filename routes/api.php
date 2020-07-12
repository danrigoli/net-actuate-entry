<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//Show
Route::get('tasks/{id}', 'TaskController@index');

// Show Admin
Route::get('tasks-admin', 'TaskController@indexAdmin');

// Create
Route::post('task', 'TaskController@store');

//Update
Route::put('task', 'TaskController@update');

//Destroy
Route::delete('task/{id}', 'TaskController@destroy');
