<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\RegisterRequest;
use App\Models\User;
use Illuminate\Auth\Events\Registered;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function showRegisterView()
    {
        return view('auth.register');
    }
    public function create(RegisterRequest $request)
    {
        $data = $request->validated();
        $data['name'] = strtolower($data['name']);
        $data['family'] = strtolower($data['family']);
        $data['email'] = strtolower($data['email']);
        $user = User::create([
            'name' => $data['name'],
            'family' => $data['family'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ]);
        Auth::login($user);
        event(new Registered($user));
        return redirect()->route('verification.notice')->with(['verifyEmail' => 'Вы успешно прошли регистрацию.Но Email не верифицирован. Вам на почту должно было прийти письмо о верификации']);
    }
}