<?php

namespace App\Http\Requests\User;

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
            'name' => ['required', 'string', 'alpha', 'min:4', 'max:30'],
            'family' => ['required', 'string', 'alpha', 'min:4', 'max:30']
        ];
    }
}