<?php

namespace App\Http\Requests\User;

use Illuminate\Foundation\Http\FormRequest;

class UpdatePasswordRequest extends FormRequest
{

    public function authorize()
    {
        return true;
    }


    public function rules()
    {
        return [
            'oldpassword' => ['required', 'password'],
            'password' => ['required', 'string', 'min:5', 'confirmed']
        ];
    }
}