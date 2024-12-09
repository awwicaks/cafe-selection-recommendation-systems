<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\Mlogin;
use App\Models\Mhome;


class Login extends Controller
{
    public function index (){
        return view ('Admin.index');
        // echo'Login';
    }

    public function login(Request $request)
    {
        // Debug input
        // dd($request->all());

        // Validasi data login
        $this->validate($request, [
            'username' => 'required',
            'password' => 'required'
        ]);

        // Coba melakukan autentikasi
        $credentials = ['username' => $request->username, 'password' => $request->password];
        $authenticated = Auth::guard('madmin')->attempt($credentials);

        // Debug credentials dan hasil autentikasi
        // dd($credentials, $authenticated);

        if ($authenticated) {
            // Jika berhasil, redirect ke dashboard admin
            $admin = Auth::guard('madmin')->user();
            $request->session()->put('id_admin', $admin->id);
            $request->session()->put('username', $admin->username);
            return redirect()->route('dashboardadmin');
        } else {
            echo 'gagal';
        }

        $request->session()->put('id_admin', $admin->id);

        $id_admin = session('id_admin');
            if ($id_admin) {
                // Lakukan sesuatu dengan $id_admin yang sedang login
                echo "ID Admin yang sedang login: " . $id_admin;
            } else {
                echo "Tidak ada admin yang sedang login.";
            }

      
    }
    

    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();

        echo'logout';
        // return redirect('/'); // Redirect setelah logout
    }

    public function ceklogin()
{
    // Mendapatkan username admin dari session
    $adminUsername = session('username');

    // Tampilkan username admin di halaman
    echo "Welcome, $adminUsername!";
}
}
