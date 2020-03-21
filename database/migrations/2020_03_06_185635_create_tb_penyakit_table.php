<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbPenyakitTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_penyakit', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string("kode_penyakit",25)->unique();
            $table->string("nama_penyakit",150);
            $table->text("bahan_obat");
            $table->text("tutorial");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tb_penyakit');
    }
}
