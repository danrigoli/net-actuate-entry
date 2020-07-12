<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Task;
use Faker\Generator as Faker;

$factory->define(Task::class, function (Faker $faker) {
    $status = ['New', 'In Progress', 'Done', 'Review'];
    return [
        'name' => $faker->text(15),
        'status' =>  $status[rand(0,3)]
    ];
});
