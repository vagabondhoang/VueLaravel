<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class CommentsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('comments')->insert([
     		'user_id' 	=> 1,
            'product_id' => 1,
            'content' 	=> 'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
        ]);
    }
}
