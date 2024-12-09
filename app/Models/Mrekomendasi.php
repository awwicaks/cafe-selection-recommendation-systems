<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Mrekomendasi extends Model
{
    use HasFactory;
    protected $table = 'mdatakaves';

    protected $primaryKey = 'id_kafe';

    protected $fillable = [
        'id_kafe',
        'nama_kafe',
        'alamat_kafe',
        'telp_kafe',
        'deskripsi_kafe'
    ];


    protected static $stopwords = [
        'di', 'ke', 'dari', 'yang', 'dan', 'atau', 'ini', 'itu', 'adalah', 'sebagai', 'untuk', 'dengan', 'juga', 'buat', 'ingin', 'kalian', 'bagi', 'hingga', 'setiap', 'juga', 'ada', 'mulai', 'kalian', 'terlalu', 'selain', 'siapa', 'menjadi'
        // Anda bisa menambahkan lebih banyak kata di sini
    ];

    // Fungsi untuk menghapus stopwords dan kata-kata berulang dari teks
    protected static function remove_stopwords_and_duplicates($text)
    {
        $words = explode(' ', strtolower($text));
        $filtered_words = array_filter($words, function ($word) {
            return !in_array($word, self::$stopwords);
        });
        $unique_words = array_unique($filtered_words);
        return implode(' ', $unique_words);
    }


    static function cosine_similarity($alamat1, $alamat2)
    {
          // Hapus stopwords dan kata-kata berulang
          $alamat1 = self::remove_stopwords_and_duplicates($alamat1);
          $alamat2 = self::remove_stopwords_and_duplicates($alamat2);    

        $set1 = explode(' ', strtolower($alamat1));
        $set2 = explode(' ', strtolower($alamat2));

        // echo "<pre>";
        // print_r ($set1);
        // echo "</pre>";
      

        $yang_sama = array_intersect($set1, $set2);
        $jumlah_yang_sama = count($yang_sama);
        $jumlah_a = count($set1);
        $jumlah_b = count($set2);
        $jumlah_a_x_b = $jumlah_a * $jumlah_b;
        $akar_a_x_b = sqrt($jumlah_a_x_b);

        $nilai_similarity = $jumlah_yang_sama / $akar_a_x_b;

        // echo "<pre>";
        // print_r ($yang_sama);
        // echo "</pre>";

        return $nilai_similarity;
    }
}
