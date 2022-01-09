<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLanguagePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('language_posts', function (Blueprint $table) {
            $table->id();

            $table->unsignedBigInteger('langauge_id');
            $table->unsignedBigInteger('post_id');

            $table->index('langauge_id', 'language_posts_langauge_idx');
            $table->index('post_id', 'language_posts_post_idx');

            $table->unique(['langauge_id', 'post_id']);

            $table->foreign('langauge_id', 'language_posts_langauge_fk')->on('languages')->references('id')->cascadeOnDelete()->cascadeOnUpdate();
            $table->foreign('post_id', 'language_posts_post_fk')->on('posts')->references('id')->cascadeOnDelete()->cascadeOnUpdate();

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
        Schema::dropIfExists('language_posts');
    }
}