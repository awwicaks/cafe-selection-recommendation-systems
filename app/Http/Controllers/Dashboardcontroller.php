<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Mdashbaord;
use App\Models\Mdatakafe;


class Dashboardcontroller extends Controller
{
    public function index (){

        $data = Mdatakafe::all();
        return view('DashboardAdmin.index', ['data'=>$data]);
    }

  

}
