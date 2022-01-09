@extends('layouts.main')
@section('title', 'Главная')
@section('content')
    <div class="container">
        <div class="row">
            @include('includes.user.nav')
            <div class="col-9">
                <div class="container bg-white mt-3 p-3 rounded border">
                    <form action="{{ route('user.data.update') }}" method="POST">
                        @csrf
                        @method('PUT')
                        <div class="mb-3">
                            <label for="name" class="form-label">Имя</label>
                            <input type="text" class="form-control" id="name" value="{{ old('name', $user->name) }}" name="name">
                            @error('name')
                                <div class="text-danger">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="family" class="form-label">Фамилия</label>
                            <input type="text" class="form-control" id="family" value="{{ old('name', $user->family) }}" name="family">
                            @error('family')
                                <div class="text-danger">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <input type="submit" class="btn btn-danger" id="exampleInputPassword1" value="Изменить">
                        </div>
                    </form>
                    @if (session('success'))
                        <div class="alert alert-success mt-3 text-center ">
                            {{ session('success') }}
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
@endsection
