<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

/** @var \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\User::class, function (Faker\Generator $faker) {
    static $password;

    return [
        'name' => $faker->name,
        'email' => $faker->unique()->safeEmail,
        'password' => $password ?: $password = bcrypt('secret'),
        'remember_token' => str_random(10),
    ];
});

$factory->define(App\Product::class, function (Faker\Generator $faker) {

    return [
        'category_id' => $faker->numberBetween($min = 1, $max = 5),
        'name' => $faker->title,
        'price' => $faker->numberBetween($min = 1, $max = 100),
        'description' => $faker->paragraph,
        'discount' => $faker->numberBetween($min = 1, $max = 10),
        'book' => $faker->numberBetween($min = 1, $max = 1000),
        'view' => $faker->numberBetween($min = 1, $max = 100),
    ];
});
