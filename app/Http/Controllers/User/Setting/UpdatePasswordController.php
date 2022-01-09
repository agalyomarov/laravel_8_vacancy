<?php

namespace App\Http\Controllers\User\Setting;

use App\Http\Controllers\Controller;
use App\Http\Requests\User\UpdatePasswordRequest;
use Illuminate\Support\Facades\Hash;

class UpdatePasswordController extends Controller
{
    public function __invoke(UpdatePasswordRequest $request)
    {
        $data = $request->validated();
        $result = $request->user()->update([
            'password' => Hash::make($data['password'])
        ]);
        if ($result) {
            return back()->with(['success' => 'Пароль успешно изменен']);
        }
        return back();
    }
}