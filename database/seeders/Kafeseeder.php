<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class Kafeseeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('mdatakaves')->insert([
            'id_admin' => '1',
            'nama_kafe' => 'Jokopi Seturan',
            'alamat_kafe' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sit amet pulvinar enim.'
        ]);
    }
}
