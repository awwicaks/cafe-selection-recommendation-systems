<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mdetailkafe extends Model
{
    use HasFactory;
    protected $table='mdatakaves';

    protected $primaryKey = 'id_kafe';

    protected $keyType = 'int';

    protected $fillable = [
        'nama_kafe',
        'alamat_kafe',
        'deskripsi_kafe'
    ];
}

