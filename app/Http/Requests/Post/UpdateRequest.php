<?php

namespace App\Http\Requests\Post;

use Illuminate\Foundation\Http\FormRequest;

class UpdateRequest extends FormRequest
{

    public function authorize()
    {
        return true;
    }


    public function rules()
    {
        return [
            'company' => ['required', 'min:4', 'max:100', 'string'],
            'city_id' => ['required'],
            'education_id' => ['required'],
            'profession_id' => ['required'],
            'stage_id' => ['required'],
            'schedule_id' => ['required'],
            'salary_id' => ['required'],
            'description' => ['required', 'string', 'min:25', 'max:1000'],
            'email' => ['nullable', 'email'],
            'phone' => ['required', 'numeric'],
            'languages' => ''
        ];
    }
}