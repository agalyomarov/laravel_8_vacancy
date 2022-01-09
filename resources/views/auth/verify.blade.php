 @extends('layouts.main')
 @section('title', 'Главная')
 @section('content')
     <div class="container bg-white border rounded p-3 mt-4 w-75" style="height:35vh">
         <div class="">
             <form action="{{ route('verification.send') }}" method="POST">
                 @csrf
                 <label for="email">Email</label>
                 <input type="email" class="form-control" id="email" name="email" disabled value="{{ Auth::user()->email }}">
                 <input class=" btn btn-success text-center float-end mt-3" type="submit" value=" Отправить верификацию еще раз">
             </form>
         </div>
         @if (session('defaultEmailVerifyNotici'))
             <div class="alert alert-danger w-100 mt-3 float-start text-center">
                 <span class="">{{ session('defaultEmailVerifyNotici') }}</span>
             </div>
         @endif
         @if (session('verifyEmail'))
             <div class="btn btn-info w-100 mt-3 float-start">
                 {{ session('verifyEmail') }}
             </div>
         @endif
         @if (session('verifiedEmail'))
             <div class="alert alert-success w-100 mt-3 float-start" role="alert">
                 {{ session('verifiedEmail') }}
             </div>
         @endif
     </div>

 @endsection
