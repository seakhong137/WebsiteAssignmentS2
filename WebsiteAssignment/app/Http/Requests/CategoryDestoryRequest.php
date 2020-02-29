<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CategoryDestoryRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return !($this->route('id')==config('cms.default_category_id'));
    }
    public function forbiddenResponse()
    {
        return redirect()->back()->with('error-message','You cannot delete defaulte category');
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
