<?php

namespace App\Http\Controllers\User\Post;

use App\Http\Controllers\Controller;
use App\Models\Post;
use App\Models\City;
use App\Models\Education;
use App\Models\Language;
use App\Models\Profession;
use App\Models\Salary;
use App\Models\Schedule;
use App\Models\Stage;

class EditController extends BaseController
{
    public function __invoke(Post $post)
    {
        $cities = City::all();
        $professions = Profession::all();
        $stages = Stage::all();
        $educations = Education::all();
        $languages = Language::all();
        unset($languages[0]);
        $schedules = Schedule::all();
        $salaries = Salary::all();
        $post['company'] = ucwords($post['company']);
        return view('user.post.edit', compact('cities', 'professions', 'stages', 'educations', 'languages', 'schedules', 'salaries', 'post'));
    }
}