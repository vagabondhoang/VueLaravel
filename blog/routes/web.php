<?php


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
		return App\Product::latest()->get();
	});
});
