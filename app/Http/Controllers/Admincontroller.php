<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Madmin;
use App\Models\Mdatakafe;

class Admincontroller extends Controller
{
    public function index (){

        $data = Mdatakafe::all();
        return view('Dashboard.index', ['data'=>$data]);
    }

  

}
