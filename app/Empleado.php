<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Asistencias;

class Empleado extends Model
{
    protected $table = "empleado";

    public function asistencias(){
        //return $this->hasMany('App/Asistencias');
        return $this->hasMany(Asistencias::class);
    }
}
