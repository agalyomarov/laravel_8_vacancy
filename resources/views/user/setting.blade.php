@extends('layouts.main')
@section('title', 'Главная')
@section('content')
    <div class="container">
        <div class="row">
            @include('includes.user.nav')
            <div class="col-9">
                <div class="container bg-white mt-3 p-3 rounded border pb-5">
                    <form action="{{ route('user.setting.update.email') }}" method="POST">
                        @csrf
                        @method('PUT')
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" name="email" value="{{ old('email', $user->email) }}">
                            @error('email')
                                <div class="text-danger">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <div class="mb-3">
                                <input type="submit" class="btn btn-danger ps-4 pe-4 float-end mb-4" id="exampleInputPassword1" value="Изменить">
                            </div>
                    </form>
                    <form method="POST" action="{{ route('user.setting.update.password') }}">
                        @csrf
                        @method('PUT')
                        <div class="mb-3">
                            <label for="oldpassword" class="form-label mt-5">Старый пароль</label>
                            <input type="password" class="form-control" id="oldpassword" name="oldpassword" value="{{ old('oldpassword') }}">
                            @error('oldpassword')
                                <div class="text-danger">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="newpassword" class="form-label">Новый пароль</label>
                            <input type="password" class="form-control" id="newpassword" name="password" value="{{ old('password') }}">
                            @error('password')
                                <div class="text-danger">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="password_confirmation" class="form-label">Подвердите новый пароль</label>
                            <input type="password" class="form-control" id="password_confirmation" name="password_confirmation" value="{{ old('password_confirmation') }}">
                            @error('password_confirmation')
                                <div class="text-danger">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <input type="submit" class="btn btn-danger float-end ps-4 pe-4" id="exampleInputPassword1" value="Изменить">
                        </div>
                    </form>
                    @if (session('success'))
                        <div class="alert alert-success">
                            {{ session('success') }}
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
@endsection
