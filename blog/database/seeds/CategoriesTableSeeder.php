<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	DB::table('categories')->insert([
    		[	
    		'title' => 'Drinks'
    		],
    		[
    		'title' => 'Desserts'
    		],
    		[
    		'title'	=> 'Business'
    		],
    		[
    		'title' => 'Breakfast'
    		],
    		[
    		'title' => 'Lunch'
    		]	
    		]);
    }
}
