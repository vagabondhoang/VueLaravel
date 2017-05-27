<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;


class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
     	DB::table('products')->insert([
     		'category_id' 	=> 1,
            'name'			=> 'GRILLED BEEF RILLED BEEF RILLED BEEF',
            'price' 		=> 10,
            'description' 	=> 'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
            'discount' 		=> 10,
            'book' 			=> 1,
            'view' 			=> 10,
        ]);   
    }
}
