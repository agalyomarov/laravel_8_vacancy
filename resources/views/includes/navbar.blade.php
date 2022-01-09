<nav class="navbar navbar-light">
    <a class="navbar-brand" href="{{ route('home') }}" style="font-size:30px;line-height:inherit">
        <img src="https://getbootstrap.com/docs/5.0/assets/brand/bootstrap-logo.svg" alt="" width="60" height="48">
        <strong>{{ env('APP_NAME') }}</strong>
    </a>
    <div class="d-flex justify-content-center">
        @can('view', auth()->user())
            <a class="btn btn-dark me-3" href="{{ route('admin') }}">Admin Panel</a>
        @endcan
        <a class="btn btn-danger me-3" href="{{ route('user.posts.create') }}">СОЗДАТЬ ВАНАСИЮ</a>
        @guest
            <a class="btn btn-primary" href="{{ route('login.get') }}">ВХОД</a>
        @endguest
        @auth
            <a title="Профил" class=" ps-3 pe-3" href="{{ route('user.posts.index') }}"><i class="fas fa-user fs-2"></i></a>
            <form id="form-logout" action="{{ route('login.post.logout') }}" method="POST">
                @csrf
                <i title="Выходить" class="fas fa-sign-out-alt ps-3  pe-3 fs-2 text-dark" onclick="document.getElementById('form-logout').submit()"></i>
            </form>
        @endauth

    </div>
</nav>
