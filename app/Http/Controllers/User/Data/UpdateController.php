<?php

namespace App\Http\Controllers\User\Data;

use App\Http\Controllers\Controller;
use App\Http\Requests\User\UpdateRequest;

class UpdateController extends Controller
{
    public function __invoke(UpdateRequest $request)
    {
        $data = $request->validated();
        $data['name'] = strtolower($data['name']);
        $data['family'] = strtolower($data['family']);
        $request->user()->update($data);
        return redirect()->route('user.data.index')->with(['success' => 'Данные успешно изменены']);
    }
}