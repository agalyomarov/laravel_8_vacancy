@extends('layouts.main')
@section('title', 'Главная')
@section('content')
    <div>
        <h3 class="text-primary" class="banner__header" data-v-57c7a477="">Найди подходящую работу уже сегодня!</h3>
    </div>
    <div class="container mx-auto" style="max-width:90%">
        <form method="get" action="{{ route('home') }}">
            <div class="input-group mt-5">
                <input type="text" class="form-control lh-lg rounded" placeholder="Введите ключевые слова" name="search" value="@if (isset($inputs['search'])) {{ $inputs['search'] }} @endif">
                <input type="submit" value="Найти" class="input-group-btn btn btn-primary pe-4 ps-4 lh-lg">
            </div>
            <div style="" class="row bg-dark bg-gradient mt-3 p-3 mx-auto text-white rounded">
                <h6 class="text-white">РАСШИРЕННЫЙ ПОИСК:</h6>
                <div class="col-md-6">
                    <label for="city" class="form-label">Город</label>
                    <select id="city" class="form-select" name="city_id">
                        <option value=""></option>
                        @foreach ($cities as $city)
                            <option @if (isset($inputs['city_id']) && $inputs['city_id'] == $city->id) selected @endif value="{{ $city->id }}">{{ $city->name }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="col-md-6">
                    <label for="job" class="form-label">Профессия</label>
                    <select id="job" class="form-select" name="profession_id">
                        <option value=""></option>
                        @foreach ($professions as $profession)
                            <option @if (isset($inputs['profession_id']) && $inputs['profession_id'] == $profession->id) selected @endif value="{{ $profession->id }}">{{ $profession->name }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="col-md-6 mt-3">
                    <label for="stage" class="form-label">Опыт работы</label>
                    <select id="stage" class="form-select" name="stage_id">
                        <option value=""></option>
                        @foreach ($stages as $stage)
                            <option @if (isset($inputs['stage_id']) && $inputs['stage_id'] == $stage->id) selected @endif value="{{ $stage->id }}">{{ $stage->name }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="col-md-6 mt-3">
                    <label for="money" class="form-label">Зарплата,TMT</label>
                    <select id="money" class="form-select" name="salary_id">
                        <option value=""></option>
                        @foreach ($salaries as $salary)
                            <option @if (isset($inputs['salary_id']) && $inputs['salary_id'] == $salary->id) selected @endif value="{{ $salary->id }}">{{ $salary->name }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="col-md-6 mt-3">
                    <label for="create_time" class="form-label">Время</label>
                    <select id="create_time" class="form-select" name="sort">
                        <option value=""></option>
                        @foreach ($sorts as $key => $sort)
                            <option @if (isset($inputs['sort']) && $inputs['sort'] == $key + 1) selected @endif value="{{ $key + 1 }}">{{ $sort }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="col-md-6 mt-3">
                    <label for="count" class="form-label">Показать</label>
                    <select id="count" class="form-select" name="count">
                        @for ($i = 25; $i <= 100; $i = $i + 25)
                            <option @if (isset($inputs['count']) && $inputs['count'] == $i) selected @endif value="{{ $i }}">{{ $i }}</option>
                        @endfor
                    </select>
                </div>
            </div>
        </form>
    </div>

    <div class="  container mt-4 mx-auto" style="width:90%">
        @foreach ($posts as $post)
            <div class="bg-white border border-warning card_card-block  position-relative p-2 pt-1  @if (!$loop->last) border-bottom-0 @endif ">
                <div class="row ps-2 pe-2" style="height:40px;line-height:38px">
                    <div class="col-2 text-warning">г.{{ $post->city->name }}</div>
                    <div class="col-4 text-danger">{{ $post->profession->name }}</div>
                    <div class="col-4 text-primary">{{ $post->salary->name }}</div>
                    <div class="col-2  text-end  text-secondary">{{ $post->created_at->format('d.m.Y') }}</div>
                </div>
                <div style="height:40px;line-height:38px" class="overflow-hidden ps-2 pe-2">
                    {{ mb_substr('Требование.Опыт:' . $post->stage->name . '. Образование:' . $post->education->name . '. ' . $post->description, 0, 120) }}
                </div>
                <div class="container position-absolute bottom-0 start-0">
                    <div class="row " style="height:40px;line-height:38px">
                        <div class="col-6 ">Контакты: {{ $post->phone }}</div>
                        <div class="col-4"></div>
                        <a href="{{ route('home.show', ['post' => $post->id]) }}" class="col-2 text-center btn btn-info">Подробнее</a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
    <nav class="mx-auto mt-3 float-center d-flex justify-content-center">
        {{ $posts->links() }}
    </nav>
@endsection
