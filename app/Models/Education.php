<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Education extends Model
{
    use HasFactory;
    public function posts()
    {
        return $this->hasMany(Education::class, 'education_id', 'id');
    }
}