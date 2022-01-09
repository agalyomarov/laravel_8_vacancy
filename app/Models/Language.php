<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Language extends Model
{
    use HasFactory;
    public function posts()
    {
        return $this->belongsToMany(Post::class, 'language_posts', 'langauge_id', 'post_id');
    }
}