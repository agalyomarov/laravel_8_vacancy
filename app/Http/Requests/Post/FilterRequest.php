<?php

namespace App\Http\Requests\Post;

use Illuminate\Foundation\Http\FormRequest;

class FilterRequest extends FormRequest
{

    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'city_id' => ['nullable', 'numeric'],
            'profession_id' =>  ['nullable', 'numeric'],
            'stage_id' =>  ['nullable', 'numeric'],
            'salary_id' =>  ['nullable', 'numeric'],
            'count' =>  ['nullable', 'numeric'],
            'sort' =>  ['nullable', 'numeric'],
            'search' => ['nullable', 'string']
        ];
    }
}