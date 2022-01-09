<?php

namespace App\Http\Controllers\User\Setting;

use App\Http\Controllers\Controller;
use App\Http\Requests\User\UpdateEmailRequest;
use Illuminate\Support\Facades\Auth;

class UpdateEmailController extends Controller
{
    public function __invoke(UpdateEmailRequest $request)
    {
        $request['email'] = strtolower(str_replace(' ', '', $request['email']));
        if ($request['email'] == $request->user()->email) {
            return back();
        }
        $data = $request->validated();

        $data['email'] = strtolower($data['email']);
        $result = $request->user()->update([
            'email' => $data['email'],
            'email_verified_at' => null
        ]);
        if ($result) {
            Auth::logout();
            $request->session()->invalidate();
            $request->session()->regenerateToken();
            return redirect()->route('login.get');
        }
        return back();
    }
}