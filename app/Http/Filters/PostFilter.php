<?php


namespace App\Http\Filters;

use App\Models\Profession;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Builder;

class PostFilter extends AbstractFilter
{
    public const CITY_ID = 'city_id';
    public const PROFESSION_ID = 'profession_id';
    public const STAGE_ID = 'stage_id';
    public const SALARY_ID = 'salary_id';
    public const SORT = 'sort';
    public const SEARCH = 'search';

    protected function getCallbacks(): array
    {
        return [
            self::CITY_ID => [$this, 'city_id'],
            self::PROFESSION_ID => [$this, 'profession_id'],
            self::STAGE_ID => [$this, 'stage_id'],
            self::SALARY_ID => [$this, 'salary_id'],
            self::SORT => [$this, 'sort'],
            self::SEARCH => [$this, 'search']
        ];
    }
    public function salary_id(Builder $builder, $value)
    {
        $builder->where('salary_id', $value);
    }
    public function stage_id(Builder $builder, $value)
    {
        $builder->where('stage_id', $value);
    }
    public function profession_id(Builder $builder, $value)
    {
        $builder->where('profession_id', $value);
    }
    public function city_id(Builder $builder, $value)
    {
        $builder->where('city_id', $value);
    }
    public function sort(Builder $builder, $value)
    {
        match ($value) {
            '1' => $builder->where('created_at', '>', Carbon::today()),
            '2' => $builder->where('created_at', '>', Carbon::now()->startOfWeek()),
            '3' => $builder->where('created_at', '>', Carbon::now()->startOfMonth())
        };
    }
    public function search(Builder $builder, $value)
    {
        $ids = Profession::search($value);
        $builder->orWhere('company', 'like', "%{$value}%")->orWhere('description', 'like', "%{$value}%")->orWhere('profession_id', $ids);
    }
}