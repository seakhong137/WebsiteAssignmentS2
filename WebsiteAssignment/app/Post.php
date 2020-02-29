<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon; 
use GrahamCampbell\Markdown\Facades\Markdown;

class Post extends Model
{

    //protected $fillable=['view_count'];
    protected $dates=['published_at'];
    protected $fillable=['title','slug','excerpt','body','published_at','category_id','view_count','img' ];
    

    public function setPublishedAtAttribute($value)
    { 
 $this->attributes['published_at']=$value?:NULL; 

    }
    

    public function author()
    { 
        return $this->belongsTo (User::class);
    }
    public function category()
    { 
        return $this->belongsTo (Category::class);
    }
    public function getImageUrlAttribute($value)
    {
        $imageUrl = "";

        if ( ! is_null($this->img))
        {
            $imagePath = public_path() . "/img/" . $this->img;
            if (file_exists($imagePath)) $imageUrl = asset("img/" . $this->img);
        }

        return $imageUrl;
        
    }

    public function getImageThumbUrlAttribute($value)
    {
        $imageUrl = "";

        if ( ! is_null($this->img))
        {
           // $directory = config('cms.image.directory');
            $ext       = substr(strrchr($this->img, '.'), 1);
            $thumbnail = str_replace(".{$ext}", "_thumb.{$ext}", $this->img);
            $imagePath = public_path() . "/img/" . $thumbnail;
            if (file_exists($imagePath)) $imageUrl = asset("img/" . $thumbnail);
        }

        return $imageUrl;
    }
    public function getDateAttribute($value)
    {
        return is_null($this->published_at)?'':$this->published_at->diffForHumans();
    }
  
    
    public function getBodyHtmlAttribute($value)
    { 
        return $this->body? Markdown::convertToHtml($this->body):NULL;  
      }
      public function getExcerptHtmlAttribute($value)
      { 
          return $this->excerpt? Markdown::convertToHtml($this->excerpt):NULL;  
        }

        public function dateFormatted($showTimes = false)
    {
        $format = "d/m/Y";
        if ($showTimes) $format = $format . " H:i:s";
        return $this->created_at->format($format);
    }

    public function publicationLabel()
    {
        if ( ! $this->published_at) {
            return '<span class="label label-warning">Draft</span>';
        }
        elseif ($this->published_at && $this->published_at->isFuture()) {
            return '<span class="label label-info">Schedule</span>';
        }
        else {
            return '<span class="label label-success">Published</span>';
        }
    }

    public function scopeLatestFirst()
    {
        return $this->orderBy('created_at','desc');
    }

    public function scopePopular($query){
        return $query->orderBy('view_count','desc');
    }
    public function scopePublished($query)
    {
        return $query->where("published_at", "<=", Carbon::now());
    }

    public function scopeScheduled($query)
    {
        return $query->where("published_at", ">", Carbon::now());
    }

    public function scopeDraft($query)
    {
        return $query->whereNull("published_at");
    }
    public function scopeFilter($query, $term)
    {
        // check if any term entered
        if ($term)
        {
            $query->where(function($q) use ($term) {
          
                $q->orWhere('title', 'LIKE', "%{$term}%");
                $q->orWhere('excerpt', 'LIKE', "%{$term}%");
            });
        }
    }

    public function comments(){
        return $this->hasMany(Comment::class);
    }
    public function commentsNumber($label = 'Comment')
    {
        $commentsNumber = $this->comments->count();

        return $commentsNumber . " " . str_plural($label, $commentsNumber);
    }

    public function createComment(array $data)
    {
        $this->comments()->create($data);
    }

}
