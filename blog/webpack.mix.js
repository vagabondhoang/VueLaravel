const { mix } = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js(['resources/assets/js/app.js',
	'resources/assets/js/bootstrap.js'
], 'public/js/app.js')
   .sass('resources/assets/sass/app.scss', 'public/css')
   .styles(['resources/assets/css/styles.css',
   	'resources/assets/css/bootstrap.min.css'
   ], 'public/css/admin.css')
   .scripts('resources/assets/js/custom.js', 'public/js/admin.js');

