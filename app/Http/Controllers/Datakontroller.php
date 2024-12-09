<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Mdatadashbaord;

class Datakontroller extends Controller
{
    public function index (){

       
        return view('TambahKafe.index');
    }
}
