<?php

namespace App\Policies;

use App\Models\Post;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class PostPolicy
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */
    public function __construct()
    {
    }
    public function view(User $user, Post $post)
    {
        //
    }
    public function update(User $user, Post $post)
    {
        return $post->user->id === $user->id;
    }
    public function destroy(User $user, Post $post)
    {
        return $post->user->id === $user->id;
    }
    public function show(User $user, Post $post)
    {
        return $post->user->id === $user->id;
    }
}