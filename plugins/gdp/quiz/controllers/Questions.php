<?php namespace Gdp\Quiz\Controllers;

use Backend\Classes\Controller;
use BackendMenu;

class Questions extends Controller
{
    public $table = 'gdp_quiz_question';
    
    public $implement = ['Backend\Behaviors\ListController','Backend\Behaviors\FormController'];
    
    public $listConfig = 'config_list.yaml';
    public $formConfig = 'config_form.yaml';

    public $requiredPermissions = [
        'gdp.quiz.manage_quiz' 
    ];

    public function __construct()
    {
        parent::__construct();
        BackendMenu::setContext('Gdp.Quiz', 'quiz', 'questions');
    }
}