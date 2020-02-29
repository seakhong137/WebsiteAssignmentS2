<?php

namespace App\Http\Controllers\Backend;

use App\Http\Requests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class HomeController extends BackendController
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('backend.home.index');
    }

    public function edit(Request $request)
    {
        $user = $request->user();

        return view('backend.home.edit', compact('user'));
    }

    public function update(Requests\AccountUpdateRequest $request)
    {
        $user = $request->user();
        if($request['password']==NULL)
        {
          $pass=$user['password'];
          $request['password']=$pass;
        }
      //  $request['password']=Hash::make($request['password']);
     // dd($pass);
        $user->update($request->all());
        return redirect()->back()->with("message", "Account was update successfully!");
    }
}
