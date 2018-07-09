<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Empleado extends Model
{
    protected $table = "empleado";

    public function asistencias(){
        return $this->hasMany('App/Asistencias');
    }
}
