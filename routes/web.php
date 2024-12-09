<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\Kafecontroller;
use App\Http\Controllers\Detailkafe;
use App\Http\Controllers\Home;
use App\Http\Controllers\Admincontroller;
use App\Http\Controllers\Login;
use App\Http\Controllers\Dashboardcontroller;
use App\Http\Controllers\Datakontroller;







/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/',[Home::class,'index']);
Route::get('/kafe',[Kafecontroller::class,'index']);
Route::get('/kafe/{id}', [Kafecontroller::class, 'show'])->name('kafe.detail');



Route::get('/dashboardadmin', [Dashboardcontroller::class, 'index']);
Route::get('/datadashboard', [Datakontroller::class, 'index']);
Route::get('/dashboardadmin', [Dashboardcontroller::class, 'index'])->name('dashboardadmin');   




// Route::get('/admindashboard', [Admincontroller::class, 'index'])->name('dashboard');
Route::get('/adminlogin', [Login::class, 'index']);
Route::post('/adminlogin', [Login::class, 'login'])->name('login');
Route::get('/logout', [Login::class, 'logout'])->name('logout');




//tambah kafe//
Route::post('/datadashboard', [Kafecontroller::class, 'tambahdata'])->name('tambahkafe.index');













