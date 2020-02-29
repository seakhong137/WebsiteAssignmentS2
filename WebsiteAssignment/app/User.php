<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use GrahamCampbell\Markdown\Facades\Markdown;
use Laratrust\Traits\LaratrustUserTrait;

class User extends Authenticatable
{
    use LaratrustUserTrait;
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password','slug','bio'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

//     public function setPasswordAttribute($value)
// {
//     if (!empty($value)) $this->attributes['password'] = bcrypt($value);
// }
    public function getBioHtmlAttribute($value)
    { 
        return $this->bio? Markdown::convertToHtml($this->bio):NULL;  
      }
    public function posts(){
        return $this->hasMany(Post::class,'author_id');
    }
    public function getRouteKeyName()
    {
        return 'slug';
    }
    public function gravatar()
    {
        $email = $this->email;
        $default = asset("https://www.pikpng.com/pngl/m/292-2924795_user-icon-png-transparent-white-user-icon-png.png");
        $size = 80;

        return "https://www.gravatar.com/avatar/" . md5( strtolower( trim( $email ) ) ) . "?d=" . urlencode( $default ) . "&s=" . $size;        
    }
  /*  public function getGravatarAttribute()
{
    $hash = md5(strtolower(trim($this->attributes['email'])));
    return "http://www.gravatar.com/avatar/$hash";
}*/


}
