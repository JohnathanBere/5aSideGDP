<?php namespace Gdp\Quiz\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateGdpQuizQuestion extends Migration
{
    public function up()
    {
        Schema::create('gdp_quiz_question', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->integer('quiz_id')->unsigned()->index();
            $table->text('sentence')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('gdp_quiz_question');
    }
}