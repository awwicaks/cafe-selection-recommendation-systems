<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mdatakafe extends Model
{
    use HasFactory;
    protected $table = 'mdatakaves';

    protected $primaryKey = 'id_kafe';

    protected $fillable = [
        'nama_kafe',
        'alamat_kafe',
        'telp_kafe',
        'deskripsi_kafe'
    ];

    static function cosine_similarity($alamat1, $alamat2)
    {
        $set1 = explode(' ', strtolower($alamat1));
        $set2 = explode(' ', strtolower($alamat2));

        $yang_sama = array_intersect($set1, $set2);
        $jumlah_yang_sama = count($yang_sama);
        $jumlah_a = count($set1);
        $jumlah_b = count($set2);
        $jumlah_a_x_b = $jumlah_a * $jumlah_b;
        $akar_a_x_b = sqrt($jumlah_a_x_b);

        $nilai_similarity = $jumlah_yang_sama / $akar_a_x_b;

        return $nilai_similarity;
    }
}
