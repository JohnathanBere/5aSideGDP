<?php namespace Gdp\Quiz\Controllers;

use Backend\Classes\Controller;
use BackendMenu;
use Illuminate\Http\Request;
use Gdp\Quiz\Models\Quiz;
use Gdp\Quiz\Models\Answer;
use Gdp\Quiz\Models\Question;

class Quizzes extends Controller
{
    public $implement = ['Backend\Behaviors\ListController','Backend\Behaviors\FormController'];
    
    public $listConfig = 'config_list.yaml';
    public $formConfig = 'config_form.yaml';

    public $requiredPermissions = [
        'gdp.quiz.manage_quiz' 
    ];

    public function __construct()
    {
        parent::__construct();
        BackendMenu::setContext('Gdp.Quiz', 'quiz', 'quizzes');
    }
}