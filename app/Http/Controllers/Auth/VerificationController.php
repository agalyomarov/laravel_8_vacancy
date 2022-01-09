<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\EmailVerificationRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class VerificationController extends Controller
{
   public function verification(EmailVerificationRequest $request)
   {
      $request->fulfill();
      return redirect()->route('verification.notice')->with(['verifiedEmail' => 'Email успешно верифицирован']);
   }

   public function verificationNotice()
   {
      return view('auth.verify');
   }

   public function verificationSend(Request $request)
   {
      $request->user()->sendEmailVerificationNotification();
      return redirect()->route('verification.notice')->with('verifyEmail', ' Вам на почту отправлена письмо о верификации');
   }
   public function verificationNoticeDefault()
   {
      return redirect()->route('verification.notice')->with(['defaultEmailVerifyNotici' => 'Email не верифицирован.Вам на почту отправлена письмо о верификации']);
   }
}