<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CheckAuth
{
    public function handle(Request $request, Closure $next)
    {
       if (Auth::check()){
        return $next($request);
       } else {
        return redirect('adminlogin');
       }
    }
}
