<?php

namespace App\Http\Controllers\User\Post;

use App\Models\City;
use App\Models\Education;
use App\Models\Language;
use App\Models\Profession;
use App\Models\Salary;
use App\Models\Schedule;
use App\Models\Stage;

class CreateController extends BaseController
{
    public function __invoke()
    {
        $cities = City::all();
        $professions = Profession::all();
        $stages = Stage::all();
        $educations = Education::all();
        $languages = Language::all();
        unset($languages[0]);
        $schedules = Schedule::all();
        $salaries = Salary::all();
        return view('user.post.create', compact('cities', 'professions', 'stages', 'educations', 'languages', 'schedules', 'salaries'));
    }
}