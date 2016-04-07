<?php namespace Gdp\Quiz\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateGdpQuizQuiz extends Migration
{
    public function up()
    {
        Schema::create('gdp_quiz_quiz', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->text('description')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('gdp_quiz_quiz');
    }
}
