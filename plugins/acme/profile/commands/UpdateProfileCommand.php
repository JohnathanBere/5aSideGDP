<?php namespace Acme\Profile\Commands;

use Acme\Profile\Models\Profile;
use Illuminate\Contracts\Bus\SelfHandling;
use Acme\Profile\Commands\Command;

class UpdateProfileCommand extends Command implements SelfHandling
{
    public $id;
    public $username;
    public $bio;
    public $nationality;
    public $favourite_team;
    public $position;
    public $fan_type;
    
    public function __construct($id, $username, $bio, $nationality, $favourite_team, $position, $fan_type)
    {
         $this->id = $id;
         $this->username = $username;
         $this->bio = $bio;
         $this->nationality = $nationality;
         $this->favourite_team = $favourite_team;
         $this->position = $position;
         $this->fan_type = $fan_type;
    }
    
    public function handle()
    {
        return Profile::where('id', $this->id)->update(array(
                'id' => $this->id,
                'username' => $this->username,
                'bio' => $this->bio,
                'nationality' => $this->nationality,
                'favourite_team' => $this->favourite_team,
                'position' => $this->position,
                'fan_type' => $this->fan_type
            ));    
    }
}