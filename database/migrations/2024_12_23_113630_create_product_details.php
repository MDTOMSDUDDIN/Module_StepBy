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
        Schema::create('product_details', function (Blueprint $table) {
            $table->id();
            $table->string('img1',200);
            $table->string('img2',200);
            $table->string('img3',200);
            $table->string('img4',200);
            $table->longText('des');
            $table->string('color',100);
            $table->string('size',200);

             //foreign key
             $table->unsignedBigInteger('product_id')->unique();
             //relationship with  product table 
             $table->foreign('product_id')->references('id')->on('products')
                 ->restrictOnDelete()
                 ->cascadeOnUpdate();
 
             $table->timestamp('create_at')->useCurrent();
             $table->timestamp('update_at')->useCurrent()->useCurrentOnUpdate();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('product_details');
    }
};
