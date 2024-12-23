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
        Schema::create('column_arttibutes', function (Blueprint $table) {
            $table->id();
            $table->string("email",100)->unique();
            $table->string("FirstName",50);
            $table->string("LastName",50)->nullable();
            $table->string("Country",100)->default('Bangladesh');
            $table->string("pinCode",100)->default('1234')->invisible();
            $table->timestamp("Create_date")->useCurrent();
            $table->timestamp("Create_Update")->useCurrent()->useCurrentOnUpdate();
            // $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('column_arttibutes');
    }
};
