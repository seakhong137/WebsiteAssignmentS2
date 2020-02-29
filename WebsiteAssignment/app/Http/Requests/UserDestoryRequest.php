<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserDestoryRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
      // return true;
    return !($this->route('id')==config('cms.default_user_id')||$this->route('id')==auth()->user()->id);
    }
    public function forbiddenResponse()
    {
        return redirect()->back()->with('error-message','You cannot delete default user');
        //return abort(404);
    }
 
    
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
  
    public function rules()
    {
        return [
            
        ];
    }
}
