<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ asset('css/dashboard-admin.css') }}">
    <title>Dashboard Admin Kopikane</title>
</head>
<body>
<div class="container">

    <h2>Form Tambah Kafe</h2>
    <form action="" method="POST" enctype="multipart/form-data">
        <div>
            <label for="nama">Nama Kafe</label>
            <input type="text" id="nama" name="nama" required>
        </div>
        <div>
            <label for="alamat">Alamat Kafe</label>
            <input type="text" id="alamat" name="alamat" required>
        </div>
        <button type="submit">Tambah Kafe</button>
    </form>

    <h2>Daftar Kafe</h2>
    <table>
        <thead>
            <tr>
                <th>Nama Kafe</th>
                <th>Alamat Kafe</th>
                <th>No Telp Kafe</th>
                <th>Deskripsi Kafe</th>
                <th>Gambar Kafe</th>
            </tr>
        </thead>
        <tbody>
           @foreach ($data as $kafe)

             <!-- Contoh data kafe -->
             <tr>
                <td>{{ $kafe->nama_kafe }}</td>
                <td>{{ $kafe->alamat_kafe }}</td>
      
            </tr>

           @endforeach
            <!-- Contoh data kafe di atas hanya sebagai ilustrasi, di aplikasi nyata, data ini akan diperoleh dari database -->
        </tbody>
    </table>
</div>
</body>
</html>