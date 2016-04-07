<?php namespace Acme\Profile\Requests;

use Acme\Profile\Requests\Request;

class UpdateProfileRequest extends Request
{
    public function authorize()
	{
		return true;
	}

	public function rules()
	{

		return [
			'username' => 'required',
		];
	}    
}