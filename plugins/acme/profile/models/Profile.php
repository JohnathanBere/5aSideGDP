<?php namespace Acme\Profile\Models;

use Model;

/**
 * Profile Model
 */
class Profile extends Model
{

    /**
     * @var string The database table used by the model.
     */
    public $table = 'acme_profile_profiles';

    /**
     * @var array Guarded fields
     */
    protected $guarded = [];

    /**
     * @var array Fillable fields
     */
    protected $fillable = ['username','bio', 'favourite_team', 'nationality', 'position', 'fan_type'];

    /**
     * @var array Relations
     */
    public $belongsTo = [
            'user' => ['RainLab\User\Models\User']
    ];
    
    public $hasOne = [
            'score' => ['Gdp\Quiz\Models\Score']
    ];
    
    public static function getFromUser($user)
    {
        if ($user->profile)
            return $user->profile;
            
        $profile = new static;
        $profile->user = $user;
        $profile->save();
        
        return $profile;
    }
    
    public function getFillable() {
      return $this->fillable;
    }

}