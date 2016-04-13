<?php namespace Gdp\Quiz\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateGdpQuizScore extends Migration
{
    public function up()
    {
        Schema::create('gdp_quiz_score', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->integer('profile_id')->unsigned();
            $table->integer('quiz_id')->unsigned();
            $table->double('total_score', 10, 0)->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('gdp_quiz_score');
    }
}
