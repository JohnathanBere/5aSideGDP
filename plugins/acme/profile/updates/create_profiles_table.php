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
            $table->text('bio')->nullable();
            $table->string('favourite_team');
            $table->string('nationality');
            $table->string('position')->nullable(); 
            $table->string('fan_type')->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('acme_profile_profiles');
    }

}
