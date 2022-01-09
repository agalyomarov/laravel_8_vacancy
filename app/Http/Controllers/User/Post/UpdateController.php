<?php

namespace App\Http\Controllers\User\Post;

use App\Http\Requests\Post\UpdateRequest;
use App\Models\Post;
use Illuminate\Support\Facades\Auth;

class UpdateController extends BaseController
{
    public function __invoke(Post $post, UpdateRequest $request)
    {
        $data = $request->validated();
        $this->service->update($post, $data);
        return redirect()->route('user.posts.show', ['post' => $post->id]);
    }
}