<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\LoginRequest;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function showLoginView()
    {
        return view('auth.login');
    }
    public function authenticate(LoginRequest $request)
    {
        $data = $request->validated();
        $remember_me = false;
        if (isset($data['remember_me'])) {
            $remember_me = true;
            unset($data['remember_me']);
        }
        $data['email'] = strtolower($data['email']);
        if (Auth::attempt($data, $remember_me)) {
            $request->session()->regenerate();
            return redirect()->intended('/');
        }
        return back()->withErrors([
            'email' => 'Такого пользователя не существует, либо неверный пароль',
        ]);
    }
    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/');
    }
}