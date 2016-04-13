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
            $table->string('title')->nullable();
            $table->text('description')->nullable();
            $table->string('slug')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('gdp_quiz_quiz');
    }
}
