<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->id();
            $table->string('company');
            $table->unsignedBigInteger('city_id');
            $table->unsignedBigInteger('profession_id');
            $table->unsignedBigInteger('stage_id');
            $table->unsignedBigInteger('schedule_id');
            $table->unsignedBigInteger('salary_id');
            $table->unsignedBigInteger('education_id');
            $table->unsignedBigInteger('user_id');
            $table->text('description');
            $table->string('email')->nullable();
            $table->string('phone');
            $table->unsignedBigInteger('view')->nullable();

            $table->index('city_id', 'posts_city_idx');
            $table->index('profession_id', 'posts_profession_idx');

            $table->foreign('city_id', 'posts_city_fk')->on('cities')->references('id');
            $table->foreign('profession_id', 'posts_profession_fk')->on('professions')->references('id');
            $table->foreign('stage_id', 'posts_stage_fk')->on('stages')->references('id');
            $table->foreign('schedule_id', 'posts_schedule_fk')->on('schedules')->references('id');
            $table->foreign('salary_id', 'posts_salaries_fk')->on('salaries')->references('id');
            $table->foreign('user_id', 'posts_users_fk')->on('users')->references('id')->cascadeOnUpdate()->cascadeOnDelete();

            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('posts');
    }
}