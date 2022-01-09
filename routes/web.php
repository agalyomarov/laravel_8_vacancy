<?php

use Illuminate\Support\Facades\Route;

Route::get('/', 'HomeController@index')->name('home');

Route::group(['namespace' => 'Auth'], function () {
    Route::get('/register', "RegisterController@showRegisterView")->middleware(['guest'])->name('register.get');
    Route::post('/register', "RegisterController@create")->middleware(['guest'])->name('register.post');
    Route::get('/login', 'LoginController@showLoginView')->middleware(['guest'])->name('login.get');
    Route::post('/login', 'LoginController@authenticate')->middleware(['guest'])->name('login.post');
    Route::get('/email/verify/{id}/{hash}', 'VerificationController@verification')->middleware(['auth', 'signed'])->name('verification.verify');
    Route::get('/email/verify', 'VerificationController@verificationNotice')->middleware(['auth'])->name('verification.notice');
    Route::get('/email/verify/default', 'VerificationController@verificationNoticeDefault')->name('verification.notice.default');
    Route::post('/email/verification-notification', 'VerificationController@verificationSend')->middleware(['auth', 'throttle:6,1'])->name('verification.send');
    Route::post('/login/logout', 'LoginController@logout')->middleware('auth')->name('login.post.logout');
});

Route::group(['namespace' => 'User', 'prefix' => 'user', 'middleware' => ['auth', 'verified']], function () {
    Route::group(['namespace' => 'Post', 'prefix' => 'posts'], function () {
        Route::get('/', 'IndexController')->name('user.posts.index');
        Route::get('/create', 'CreateController')->name('user.posts.create');
        Route::post('/', 'StoreController')->name('user.posts.store');
        Route::get('/{post}', 'ShowController')->name('user.posts.show')->middleware('can:show,post');
        Route::get('/{post}/edit', 'EditController')->name('user.posts.edit')->middleware('can:update,post');
        Route::patch('/{post}', 'UpdateController')->name('user.posts.update')->middleware('can:update,post');
        Route::delete('/{post}', 'DestroyController')->name('user.posts.destroy')->middleware('can:destroy,post');
    });
    Route::group(['namespace' => 'Data', 'prefix' => 'data'], function () {
        Route::get('/', 'IndexController')->name('user.data.index');
        Route::put('/', 'UpdateController')->name('user.data.update');
    });
    Route::group(['namespace' => 'Setting', 'prefix' => 'setting'], function () {
        Route::get('/', 'IndexController')->name('user.setting.index');
        Route::put('/email', 'UpdateEmailController')->name('user.setting.update.email');
        Route::put('/password', 'UpdatePasswordController')->name('user.setting.update.password');
    });
});

Route::group(['namespace' => 'Admin', 'prefix' => 'admin', 'middleware' => ['auth', 'admin']], function () {
    Route::get('/', function () {
        return view('admin.admin');
    })->name('admin');
});
Route::get('/{post}', 'HomeController@show')->name('home.show');