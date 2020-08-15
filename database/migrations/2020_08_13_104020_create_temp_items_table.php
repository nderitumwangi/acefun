<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTempItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('temp_items', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('item_category_id');
            $table->string('name');
            $table->decimal('price', 8, 2);
            $table->decimal('old_price', 8, 2);
            $table->string('desc', 100);
            $table->boolean('is_active');
            $table->boolean('is_veg');
            $table->string('brand');
            $table->string('origin');
            $table->integer('quantity');
            $table->string('alcohol');
            $table->string('image')->nullable();
            $table->string('placeholder_image');
            $table->boolean('is_recommended');
            $table->boolean('is_popular');
            $table->boolean('is_new');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('temp_items');
    }
}
