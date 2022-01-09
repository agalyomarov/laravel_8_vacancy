<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Salary extends Model
{
    use HasFactory;
    public function posts()
    {
        return $this->hasMany(Salary::class, 'salary_id', 'id');
    }
}