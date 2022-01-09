<?php

namespace App\Http\Controllers\User\Post;

use App\Http\Controllers\Controller;
use App\Models\Post;

class ShowController extends BaseController
{
    public function __invoke(Post $post)
    {
        $post->update(['view' => $post->view + 1]);
        return view('user.post.show', compact('post'));
    }
}