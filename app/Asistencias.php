<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Asistencias extends Model
{
    protected $table = "asistencia";

    public function empleado(){
        return $this->belongsTo("App/Empleado");
    }

    public $timestamps = false;
}