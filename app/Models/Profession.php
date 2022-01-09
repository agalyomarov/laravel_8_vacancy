<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Profession extends Model
{
    use HasFactory;
    public function posts()
    {
        return $this->hasMany(Profession::class, 'profession_id', 'id');
    }
    public static function search($str)
    {
        $ids = [];
        $professions = DB::table('professions')->where('name', 'like', "%{$str}%")->get();
        foreach ($professions as $value) {
            array_push($ids, $value->id);
        }
        return $ids;
    }
}