<?php

namespace App\Http\Controllers;

use App\Models\Mdetailkafe;
use App\Models\Mdatakafe;
use Illuminate\Http\Request;

class Detailkafe extends Controller
{

public function index() {
    return view('Detail-kafe.index', ['data' => $data]);
}

    public function show($id_kafe)
    {
        // Ambil detail kafe berdasarkan ID
        $data = Mdatakafe::find($id_kafe);

        foreach ($data as $kafe) {
            echo $kafe->id_kafe;
        }

        // Tampilkan view dengan data kafe
        return view('detail-kafe.index', ['data' => $data]);
    }

  
}
/*
foreach ($data as $cafe) {
    echo $cafe->id_cafe;
}*/