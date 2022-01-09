@extends('layouts.main')
@section('title', 'Главная')
@section('content')
    <div class="container bg-white w-75 rounded border p-3">
        <form method="POST" action="{{ route('register.post') }}">
            @csrf
            <div class="mb-3">
                <label for="name" class="form-label">Имя</label>
                <input type="text" class="form-control" id="name" name="name" value="{{ old('name') }}">
                @error('name')
                    <div class="text-danger">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            <div class="mb-3">
                <label for="family" class="form-label">Фамилия</label>
                <input type="text" class="form-control" id="family" name="family" value="{{ old('family') }}">
                @error('family')
                    <div class="text-danger">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" value="{{ old('email') }}">
                @error('email')
                    <div class="text-danger">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Пароль</label>
                <input type="password" class="form-control" id="password" name="password" value="{{ old('password') }}">
                @error('password')
                    <div class="text-danger">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            <div class="mb-3">
                <label for="password_confirmation" class="form-label">Повтор пароля</label>
                <input type="password" class="form-control" id="password_confirmation" name="password_confirmation">
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="agree" name="agree">
                <label class="form-check-label" for="agree"> Я соглашаюсь с правилами использования сервиса,подтверждаю своё совершеннолетие и ответственность за размещение объявления.</label>
                @error('agree')
                    <div class="text-danger">
                        {{ $message }}
                    </div>
                @enderror
            </div>
            <div class="row">
                <div class="col-2">
                    <button type="submit" class="btn btn-primary">Регистарция</button>
                </div>
                <div class="col-8"></div>
                <div class="col-2">
                    <a href="{{ route('login.get') }}" class="btn btn-danger">Войти</a>
                </div>
            </div>

        </form>
    </div>
@endsection
