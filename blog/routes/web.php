<?php
use Illuminate\Http\Request;

Route::get('/', function () {
    return view('welcome');
});

Route::get('admin', function() {
	return view('admin.home');
});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['prefix'=>'admin'], function() {
	Route::get('category', 'CategoryController@index')->name('admin.category');
	
	Route::get('products', function() {
		return App\Product::all();
	});

	Route::get('product1', 'ProductController@index');

	Route::post('products', 'ProductController@store');

	//Route::put('products', 'ProductController@index');

	Route::get('products/{id}', function($id) {
		return App\Product::findOrfail($id);
	});
	Route::get('product1/{id}', 'ProductController@edit');
	Route::patch('product1/{id}', 'ProductController@update');

	Route::delete('products/{id}', 'ProductController@destroy');
});
