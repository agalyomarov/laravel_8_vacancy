<?php

namespace App\Http\Controllers;

use App\Http\Filters\PostFilter;
use App\Http\Requests\Post\FilterRequest;
use App\Models\City;
use App\Models\Post;
use App\Models\Profession;
use App\Models\Salary;
use App\Models\Stage;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(FilterRequest $request)
    {
        $data = $request->validated();
        isset($data['count']) ? "" : $data['count'] = 25;
        $filter = app()->make(PostFilter::class, ['queryParams' => array_filter($data)]);
        $posts = Post::filter($filter)->paginate($data['count'])->withQueryString();
        $inputs = $request->all();
        $sorts = ['за сутки', 'за неделю', 'за месяц'];
        $cities = City::all();
        $professions = Profession::all();
        $stages = Stage::all();
        $salaries = Salary::all();
        return view('home', compact('cities', 'professions', 'stages', 'salaries', 'posts', 'inputs', 'sorts'));
    }
    public function show(Post $post)
    {
        return view('show', compact('post'));
    }
}