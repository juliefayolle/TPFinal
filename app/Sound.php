<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sound extends Model
{
    public $timestamps = false;
    public function availability()
    {
      return $this->belongsTo('App\Availability');
    }
    public function genders()
    {
      return $this->belongsToMany('App\Gender');
    }
}
