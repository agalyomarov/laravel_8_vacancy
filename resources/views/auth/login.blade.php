@extends('layouts.main')
@section('title', 'Главная')
@section('content')
    <div class="container bg-white w-75 rounded border p-3">
        <form method="POST" action="{{ route('login.post') }}">
            @csrf
            <div class="mb-3">
                <label for="mail" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" value="{{ old('email') }}">
                @error('email')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Пароль</label>
                <input type="password" class="form-control" id="password" name="password" value="{{ old('password') }}">
                @error('password')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="remember_me" name="remember_me">
                <label class=" form-check-label" for="remember_me">Запомнить меня</label>
            </div>
            <div class="row p-0 m-0">
                <div class="col">
                    <button type="submit" class="btn btn-primary ps-5 pe-5">Войти</button>
                </div>
                <div class="col"></div>
                <div class="col">
                    <a href="{{ route('register.get') }}" class="bg-danger text-white btn float-end ps-4 pe-4">Регистарция</a>
                </div>
            </div>
        </form>

    </div>
@endsection
