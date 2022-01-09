<?php

namespace Database\Factories;

use App\Models\City;
use App\Models\Education;
use App\Models\Profession;
use App\Models\Salary;
use App\Models\Schedule;
use App\Models\Stage;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'company' => $this->faker->company(),
            'city_id' => City::get()->random()->id,
            'education_id' => Education::get()->random()->id,
            'profession_id' => Profession::get()->random()->id,
            'stage_id' => Stage::get()->random()->id,
            'schedule_id' => Schedule::get()->random()->id,
            'salary_id' => Salary::get()->random()->id,
            'description' => $this->faker->sentence(40),
            'email' => $this->faker->email,
            'phone' => $this->faker->phoneNumber(),
            'user_id' => User::get()->random()->id,
            'view' => rand(10, 1000),
            'created_at' => date('Y-m-d H:i:s', mt_rand(strtotime('2021-11-07'), strtotime('2022-01-07')))
        ];
    }
}