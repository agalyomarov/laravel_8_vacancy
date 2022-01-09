<?php

namespace App\Http\Requests\Auth;

use Illuminate\Foundation\Http\FormRequest;

class RegisterRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }
    public function rules()
    {
        return [
            'name' => ['required', 'string', 'alpha', 'min:4', 'max:30'],
            'family' => ['required', 'string', 'alpha', 'min:4', 'max:30'],
            'email' => ['required', 'email', 'unique:users'],
            'password' => ['required', 'string', 'min:5', 'confirmed'],
            'agree' => ['required']
        ];
    }
}