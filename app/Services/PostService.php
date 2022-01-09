<?php

namespace App\Services;

use App\Models\Post;
use Illuminate\Support\Facades\Auth;

class PostService
{
   public function store($data)
   {
      $langauges = [];
      if (isset($data['languages'])) {
         $langauges = $data['languages'];
         unset($data['languages']);
      }
      $data['company'] = ucwords(strtolower($data['company']));
      $data['user_id'] = Auth::user()->id;
      $post = Post::create($data);
      $post->languages()->attach($langauges);
   }
   public function update($post, $data)
   {
      $langauges = [];
      if (isset($data['languages'])) {
         $langauges = $data['languages'];
         unset($data['languages']);
      }
      $data['company'] = ucwords(strtolower($data['company']));
      $data['user_id'] = Auth::user()->id;
      $post->update($data);
      $post->languages()->sync($langauges);
   }
}