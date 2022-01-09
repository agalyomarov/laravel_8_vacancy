@extends('layouts.main')
@section('title', 'Главная')
@section('content')
    <div class="container bg-white w-75 rounded border p-3">
        <form action="{{ route('user.posts.update', ['post' => $post->id]) }}" method="POST">
            @method('patch')
            @csrf
            <div class="mb-3">
                <label for="company" class="form-label">Имя компании</label>
                <input type="text" class="form-control" id="company" name="company" value="{{ old('company', $post->company) }}">
                @error('company')
                    <div class="text-danger">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            <div class="mb-3">
                <label for="city" class="form-label">Город</label>
                <select id="city" class="form-select" name="city_id">
                    <option selected></option>
                    @foreach ($cities as $city)
                        <option @if ($city->id === old('city_id', $post->city->id)) selected @endif value="{{ $city->id }}">{{ $city->name }}</option>
                    @endforeach
                </select>
                @error('city_id')
                    <div class="text-danger">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            <div class="mb-3">
                <label for="profession" class="form-label">Профессия</label>
                <select id="profession" class="form-select" name="profession_id">
                    <option selected></option>
                    @foreach ($professions as $profession)
                        <option @if ($profession->id === old('profession_id', $post->profession->id)) selected @endif value="{{ $profession->id }}">{{ $profession->name }}</option>
                    @endforeach
                </select>
                @error('profession_id')
                    <div class="text-danger">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            <div class="mb-3">
                <label for="stage" class="form-label">Опыт работы</label>
                <select id="stage" class="form-select" name="stage_id">
                    <option selected></option>
                    @foreach ($stages as $stage)
                        <option @if ($stage->id === old('stage_id', $post->stage->id)) selected @endif value="{{ $stage->id }}">{{ $stage->name }}</option>
                    @endforeach
                </select>
                @error('stage_id')
                    <div class="text-danger">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            <div class="mb-3">
                <label for="education" class="form-label">Образование</label>
                <select id="education" class="form-select" name="education_id">
                    <option selected></option>
                    @foreach ($educations as $education)
                        <option @if ($education->id === old('education_id', $post->education->id)) selected @endif value="{{ $education->id }}">{{ $education->name }}</option>
                    @endforeach
                </select>
                @error('education_id')
                    <div class="text-danger">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            <div class="mb-3">
                <label for="langauge" class="form-label">Языки</label>
                <select id="langauge" class="form-select" multiple name="languages[]">
                    <option disabled>Уточнить не требуется</option>
                    @foreach ($languages as $language)
                        <option @foreach ($post->languages as $postLanguages)
                            @if ($language->id == $postLanguages->id)
                                selected
                            @endif
                    @endforeach
                    value="{{ $language->id }}">{{ $language->name }}
                    </option>
                    @endforeach
                </select>
            </div>
            <div class="mb-3">
                <label for="schedule" class="form-label">График работы</label>
                <select id="schedule" class="form-select" name="schedule_id">
                    <option selected></option>
                    @foreach ($schedules as $schedule)
                        <option @if ($schedule->id === old('schedule_id', $post->schedule->id)) selected @endif value="{{ $schedule->id }}">{{ $schedule->name }}</option>
                    @endforeach
                </select>
                @error('schedule_id')
                    <div class="text-danger">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            <div class="mb-3">
                <label for="salary" class="form-label">Оклад</label>
                <select id="salary" class="form-select" name="salary_id">
                    <option selected></option>
                    @foreach ($salaries as $salary)
                        <option @if ($salary->id === old('salary_id', $post->salary->id)) selected @endif value="{{ $salary->id }}">{{ $salary->name }}</option>
                    @endforeach
                </select>
                @error('salary_id')
                    <div class="text-danger">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            <div class="mb-3">
                <label for="summernote" class="form-label">Описание</label>
                <textarea id="summernote" name="description" class="summernote"> {{ old('description', $post->description) }}</textarea>
                @error('description')
                    <div class="text-danger">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" placeholder="Не обязательно" name="email" value="{{ $post->email }}">
            </div>
            <div class="mb-3">
                <label for="tel" class="form-label">Тел: +...</label>
                <input type="text" class="form-control" id="tel" name="phone" placeholder="993666666" maxlength="9" value="{{ old('phone', $post->phone) }}">
                @error('phone')
                    <div class="text-danger">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            <div class="row">
                <div class="col-2">
                    <input type="reset" class="form-control btn btn-danger" value="Сбросить">
                </div>
                <div class="col-8"></div>
                <div class="col-2">
                    <input type="submit" class="form-control btn btn-primary" value="Изменить" onclick="document.querySelector('.summernote').innerHTML=$('#summernote').summernote('code');">
                </div>
            </div>
        </form>
    </div>
@endsection
