<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Schedule extends Model
{
    use HasFactory;
    public function posts()
    {
        return $this->hasMany(Schedule::class, 'schedule_id', 'id');
    }
}