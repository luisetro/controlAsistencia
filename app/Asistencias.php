<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Empleado;
class Asistencias extends Model
{
    protected $table = "asistencia";

    public function empleado(){
        return $this->belongsTo(Empleado::class);
    }

    public $timestamps = false;
}