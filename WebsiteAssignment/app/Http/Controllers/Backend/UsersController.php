<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Backend\BackendController;
use Illuminate\Support\Facades\Hash;
use App\User;
use App\Http\Requests;
use App\Post;
class UsersController extends BackendController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::orderBy('name')->paginate($this->limit);
        $usersCount = User::count();
        return view("backend.users.index", compact('users','usersCount'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $user =new User();
        return view('backend.users.create',compact('user'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Requests\UserStoreRequest $request)
    {
        $data = $request->all();
    $data['password'] =Hash::make($data['password']);
    // encrypt($data['password']);
   // dd($data['password']);
    $user=User::create($data);
    $user->attachRole($request->role);
        return redirect('/backend/users')->with("message","New User was created succcessfully");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
    $user =User::findOrFail($id);
        return view('backend.users.edit',compact('user'));
       // dd($user->password);
} 

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Requests\UserUpdateRequest $request, $id)
    {
       
    $user=User::findOrFail($id);
      if($request['password']==NULL)
      {
        $pass=$user['password'];
        $request['password']=$pass;
      }
      //$test=bcrypt($pass['password']);
      //dd($test);
      $request['password']=Hash::make($request['password']);
        
      $user->update($request->all());
        
           $user->detachRoles();
           $user->attachRole($request->role);
      //dd($request->password);
       return redirect('/backend/users')->with("message","User was edited succcessfully");
  
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Requests\UserDestoryRequest $request, $id)
    {
        $user= User::findOrFail($id);
        $deleteOption=$request->delete_option;
        $selectedUser=$request->selected_user;
       //dd($selectedUser);
        if($deleteOption=="delete")
        {
            //delete user
            $user->posts()->delete();
        }
        elseif($deleteOption="attribute")
        {
            $user->posts()->update(['author_id'=>$selectedUser]);
        }
      
           $user->delete();
         return redirect('/backend/users')->with("message","User was deleted succcessfully");
    
    }
    public function confirm( $id)
    {
        $user= User::findOrFail($id);
        $users=User::where('id','!=',$user->id)->pluck('name','id');
        return view('backend.users.confirm',compact('user','users'));
    
    }
}
