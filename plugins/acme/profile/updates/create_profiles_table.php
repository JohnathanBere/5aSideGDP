<?php namespace Acme\Profile\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class CreateProfilesTable extends Migration
{

    public function up()
    {
        Schema::create('acme_profile_profiles', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->integer('user_id')->unsigned()->index();
            $table->string('username')->nullable();
            $table->text('bio')->nullable();
            $table->string('favourite_team')->nullable();
            $table->string('nationality')->nullable();
            $table->string('position')->nullable(); 
            $table->string('fan_type')->nullable();
            $table->double('total_score', 10, 0)->nullable();
            $table->double('quizzes_taken', 10, 0)->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('acme_profile_profiles');
    }

}
