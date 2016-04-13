<?php namespace Gdp\Quiz\Models;

use Model;

/**
 * Model
 */
class Question extends Model
{
    use \October\Rain\Database\Traits\Validation;
    
    /*
     * Validation
     */
    public $rules = [
    ];
    
    public $primaryKey = 'id';

    /*
     * Disable timestamps by default.
     * Remove this line if timestamps are defined in the database table.
     */
    public $timestamps = false;

    /**
     * @var string The database table used by the model.
     */
    public $table = 'gdp_quiz_question';
    protected $fillable = ['sentence, quiz_id'];
    public $belongsTo = [
            'quiz' => ['Gdp\Quiz\Models\Quiz']
        ];
    public $hasMany = [
            'answers' => ['Gdp\Quiz\Models\Answer']
        ];
}