<?php

namespace App\Http\Controllers\User\Data;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class IndexController extends Controller
{
    public function __invoke()
    {
        $user = Auth::user();
        $user['name'] = ucwords($user['name']);
        $user['family'] = ucwords($user['family']);
        return view('user.data', compact('user'));
    }
}