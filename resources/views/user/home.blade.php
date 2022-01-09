@extends('layouts.main')
@section('title', 'Главная')
@section('content')
    <div class="container">
        <div class="row">
            @include('includes.user.nav')
            <div class="col-9">
                <div class="container bg-white mt-3 p-2 rounded border">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">№</th>
                                <th scope="col">Имя компании</th>
                                <th scope="col">Профессия</th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody>
                            @if (count($posts) > 0)
                                @foreach ($posts as $key => $post)
                                    <tr>
                                        <th scope="row">{{ $key + 1 }}</th>
                                        <td>{{ mb_substr($post->company, 0, 30) }}</td>
                                        <td>{{ mb_substr($post->profession->name, 0, 20) }}</td>
                                        <td><a href="{{ route('user.posts.show', ['post' => $post->id]) }}"><i class="far fa-eye  text-white btn btn-success ps-4 pe-4 float-end"></i></a></td>
                                    </tr>
                                @endforeach
                            @endif
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
