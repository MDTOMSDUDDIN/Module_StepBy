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
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('title',200);
            $table->string('short_des',500);
            $table->string('price',50);
            $table->boolean('discount');
            $table->string('discount_price',200);
            $table->string('image',200);
            $table->boolean('stack');
            $table->float('star');
            $table->enum('remark',['popular','top','new','special','trending','regular']);
            //foreign key
            $table->unsignedBigInteger('category_id');
            $table->unsignedBigInteger('brand_id');

            //category relationship
            $table->foreign('category_id')->references('id')->on('categories')
                ->restrictOnDelete()
                ->cascadeOnUpdate();

            //brand relationship
            $table->foreign('brand_id')->references('id')->on('brands')
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
        Schema::dropIfExists('products');
    }
};
