<?php namespace Acme\Profile;

use Backend;
use System\Classes\PluginBase;
use RainLab\User\Models\User as UserModel;
use RainLab\User\Controllers\Users as UsersController;
use Acme\Profile\Models\Profile as ProfileModel;

/**
 * Profile Plugin Information File
 */
class Plugin extends PluginBase
{

    /**
     * Returns information about this plugin.
     *
     * @return array
     */
    public function pluginDetails()
    {
        return [
            'name'        => 'Profile',
            'description' => 'No description provided yet...',
            'author'      => 'Acme',
            'icon'        => 'icon-leaf'
        ];
    }
    
    public function boot()
    {
        UserModel::extend(function($model){
                $model->hasOne['profile'] = ['Acme\Profile\Models\Profile'];
            });
            
        UsersController::extendFormFields(function($form, $model, $context) {
            
            if (!$model instanceof UserModel)
                return;
                
            if (!$model->exists)
                return;
            
            // To ensure a user profile always exists    
            ProfileModel::getFromUser($model);
            
            
                $form->addTabFields([
                    
                        'profile[username]' => [
                                'label' => 'Username',
                                'tab' => 'Profile',
                                'type' => 'text',
                            ],
                        'profile[bio]' => [
                                'label' => 'About Yourself',
                                'tab' => 'Profile',
                                'type' => 'textarea',
                            ],
                        'profile[favourite_team]' => [
                                'label' => 'Your Favourite Team',
                                'tab' => 'Profile',
                                'type' => 'text',
                            ],
                            'profile[nationality]' => [
                                'label' => 'Nationality',
                                'tab' => 'Profile',
                                'type' => 'text',
                            ],
                        'profile[position]' => [
                                'label' => 'Favourite Player Position',
                                'tab' => 'Profile',
                                'type' => 'text',
                            ],
                        'profile[fan_type]' => [
                                'label' => 'What sort of fan are you?',
                                'tab' => 'Profile',
                                'type' => 'text',
                            ],
                        
                    ]);
            });
    }

    /**
     * Registers any front-end components implemented in this plugin.
     *
     * @return array
     */
    public function registerComponents()
    {
        return []; // Remove this line to activate

        return [
            'Acme\Profile\Components\MyComponent' => 'myComponent',
        ];
    }

    /**
     * Registers any back-end permissions used by this plugin.
     *
     * @return array
     */
    public function registerPermissions()
    {
        return []; // Remove this line to activate

        return [
            'acme.profile.some_permission' => [
                'tab' => 'Profile',
                'label' => 'Some permission'
            ],
        ];
    }

    /**
     * Registers back-end navigation items for this plugin.
     *
     * @return array
     */
    public function registerNavigation()
    {
        return []; // Remove this line to activate

        return [
            'profile' => [
                'label'       => 'Profile',
                'url'         => Backend::url('acme/profile/mycontroller'),
                'icon'        => 'icon-leaf',
                'permissions' => ['acme.profile.*'],
                'order'       => 500,
            ],
        ];
    }

}
