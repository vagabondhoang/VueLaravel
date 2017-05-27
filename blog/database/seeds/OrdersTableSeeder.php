<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;


class OrdersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('orders')->insert([
     		'transaction_id' => 1,
     		'product_id' 	 => 1,
            'quantity'		 => 1,
            'amount' 		 => 10,
            'status'         => 1,
            'note' 	         => 'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
        ]);
    }
}
