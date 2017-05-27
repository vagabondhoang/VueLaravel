<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class TransactionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('transactions')->insert([
            'status' => 1,
            'user_id' => 1,
            'name' => 'Admin',
            'email'=> 'admin@gmail.com',
            'amount'=>10,
            'payment_type'=> 'pay via card',
            'message' => 'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
            'code_voucher' => 'rand(1, 9999)'
        ]);
    }
}
