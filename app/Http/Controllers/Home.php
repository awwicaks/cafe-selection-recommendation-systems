<?php

namespace App\Http\Controllers;

use App\Models\Mhome;
use App\Models\Mkafe;
use Illuminate\Http\Request;

class Home extends Controller
{
    public function index()
    {
        
        return view('Home.index');
    }
}
