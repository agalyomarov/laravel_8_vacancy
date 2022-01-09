@extends('layouts.main')
@section('title', 'Главная')
@section('content')
    <div class="container border rounded pt-3 ps-3 pt-2  bg-white w-75 pb-1">
        <div class="row m-0 p-0">
            <div class="col m-0 p-0">
                <h4>{{ $post->profession->name }}</h4>
            </div>
            <div class="col m-0 p-0 text-end">
                <h3>{{ $post->company }}</h3>
            </div>
        </div>
        <h6>г.{{ $post->city->name }}</h6>
        <h5 class="mt-3 text-danger"><b>Требования</b></h5>
        <ul class="lh-lg" style="list-style-type:none;margin:0;padding:0">
            <li>Опыт: {{ $post->stage->name }}.</li>
            <li> Образование: {{ $post->education->name }}.</li>
            @if (count($post->languages) > 0)
                <li>Языки:
                    @foreach ($post->languages as $language)
                        {{ $language->name }}{{ $loop->last ? '.' : ',' }}
                    @endforeach
                </li>
            @endif
        </ul>
        <h5 class="mt-3 text-danger"><b> Условия работы</b></h5>
        <ul class="lh-lg" style="list-style-type:none;margin:0;padding:0">
            <li> Оклад: {{ $post->salary->name }}</li>
            <li> Условия: {{ $post->schedule->name }}</li>
        </ul>
        <h5 class="mt-3 text-danger"><b>Описание</b></h5>
        <p>
            {!! $post->description !!}
        </p>
        <h5 class="mt-3 text-danger"><b>Контакты</b></h5>
        <p>+{{ $post->phone }}</p>
        @if (isset($post->email))
            <h5 class="mt-3 text-danger"><b>Email</b></h5>
            <p>{{ $post->email }}</p>
        @endif
        <p>Дата публикации: <small>{{ $post->created_at->format('d.m.Y H:i:s') }}</small></p>
        <div class="row m-0 p-0">
            <div class="col m-0 p-0">
                <span><i class="far fa-eye"></i> {{ $post->view }}</span>
            </div>
            <div class="col m-0 p-0">
                <a href="{{ route('home') }}" class="btn bg-success text-white float-end ps-3 pe-3">Вернутся назад</a>
            </div>
        </div>

    </div>
@endsection
