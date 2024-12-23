<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('_available_type2', function (Blueprint $table) {
            $table->id();
            $table->float('dollers');
            $table->char('positions',100);
            $table->geometry('positions2');
            $table->integer('population');
            $table->ipAddress('visitor');
            $table->json('user_details');
            $table->longText('blog_post');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('_available_type2');
    }
};
