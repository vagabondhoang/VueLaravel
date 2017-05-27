<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class FavoriteProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('favorite_products')->insert([
     		'user_id' 	=> 1,
            'product_id' => 1,
        ]);
    }
}
