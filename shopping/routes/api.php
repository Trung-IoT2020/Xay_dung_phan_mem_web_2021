<?php

use Illuminate\Http\Request;

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
<<<<<<< HEAD
//API-CATEGORY
Route::get('categories', 'ApiController@getAllCategories');
Route::get('category/{id}', 'ApiController@getCategory');
Route::post('categories', 'ApiController@createCategory');
Route::delete('category/{id}', 'ApiController@deleteCategory');
Route::put('category/{id}', 'ApiController@updateCategory');
=======

//API-PRODUCT
Route::get('products', 'ApiController@getAllProducts');
Route::get('products/{id}', 'ApiController@getProduct');
Route::post('products', 'ApiController@createProduct');
Route::delete('products/{id}', 'ApiController@deleteProduct');
Route::put('products/{id}', 'ApiController@updateProduct');
>>>>>>> bao
