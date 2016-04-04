<?php namespace Acme\Profile\Requests;

use Illuminate\Http\Request;

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