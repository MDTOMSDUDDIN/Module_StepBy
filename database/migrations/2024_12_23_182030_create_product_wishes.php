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
        Schema::create('product_wishes', function (Blueprint $table) {
            $table->id();
            
            //forein key
            $table->string('email',100)->unique();
            //relation with  profiles table 
            $table->foreign('email')->references('email')->on('profiles')
                ->restrictOnDelete()
                ->cascadeOnUpdate();

            $table->unsignedBigInteger('product_id')->unique();
            //relation with  product table 
            $table->foreign('product_id')->references('id')->on('products')
            ->restrictOnDelete()
            ->cascadeOnUpdate();
            
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent()->useCurrentOnUpdate();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('product_wishes');
    }
};
