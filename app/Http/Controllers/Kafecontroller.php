<?php

namespace App\Http\Controllers;

use App\Models\Mkafe;
use App\Models\Mdatakafe;
use App\Models\Mrekomendasi;
use Illuminate\Support\Facades\Auth;

use Illuminate\Http\Request;

class Kafecontroller extends Controller
{
    public function index() 
    {
        $data = Mdatakafe::all();
        
        return view('Kafe.index', ['data'=>$data]);
    }

   
    public function show($id_kafe)
    {
        $kafe = Mdatakafe::find($id_kafe);

        $semuakafe = Mdatakafe::all();
        $rekomendasi = [];

        foreach ($semuakafe as $sisrek) {
            if ($kafe->id_kafe != $sisrek->id_kafe) {
                $similarity_alamat = Mrekomendasi::cosine_similarity($kafe->alamat_kafe, $sisrek->alamat_kafe);
                $similarity_deskripsi = Mrekomendasi::cosine_similarity($kafe->deskripsi_kafe, $sisrek->deskripsi_kafe);
                $total_similarity = ($similarity_alamat + $similarity_deskripsi) / 2;
                $rekomendasi[] = [
                    'sisrek' => $sisrek,
                    'similarity' => $total_similarity
                ];
            }
        }

        usort($rekomendasi, function ($a, $b) {
            return $b['similarity'] <=> $a['similarity'];
        });

        $rekomendasiTeratas = array_slice($rekomendasi, 0, 5);

        $data = [
            'kafe' => $kafe,
            'rekomendasi' => $rekomendasiTeratas,
        ];

        // echo "<pre>";
        // print_r ($rekomendasiTeratas);
        // echo "</pre>";
      
        return view('Kafe.detail', $data);
    }

    public function tambahdata(Request $request)
    {
        $request -> validate([
            'nama_kafe' => 'required',
            'alamat_kafe' => 'required',
            'telp_kafe' => 'required',
            'deskripsi_kafe' => 'required'
        ]);

        // upload gambar //
 

        //$gambarPath = $request->file('gambar_kafe')->tambahdata('images', 'public'); 'gambar_kafe' => $gambarPath//

        Mdatakafe::create([
            'nama_kafe' => $request->nama_kafe,
            'alamat_kafe' => $request->alamat_kafe,
            'telp_kafe' => $request->telp_kafe,
            'deskripsi_kafe' => $request->deskripsi_kafe,
            'id_admin' => Auth::id_admin()
        ]);

        return redirect()->back()->with('success', 'Kafe berhasil ditambahkan');

        
}
}