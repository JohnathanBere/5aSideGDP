<?php namespace Gdp\Quiz\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateGdpQuizAnswer extends Migration
{
    public function up()
    {
        Schema::create('gdp_quiz_answer', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->integer('question_id')->unsigned()->index();
            $table->text('caption')->nullable();
            $table->boolean('flag')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('gdp_quiz_answer');
    }
}