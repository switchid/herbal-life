<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbTumbuhanobatTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_tumbuhanobat', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string("kode_tumbuhan",25)->unique();
            $table->string("nama_tumbuhan",100);
            $table->text("kegunaan");
            $table->string("path_gambar",255);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tb_tumbuhanobat');
    }
}
