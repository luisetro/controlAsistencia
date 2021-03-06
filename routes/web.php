<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('admin/control-asistencia','AdminAsistenciaController@getControlAsistencia');
Route::get('admin/empleados','AdminAsistenciaController@empleados');
Route::post('admin/marcarEntrada','AdminAsistenciaController@marcarEntrada');
Route::post('admin/marcarSalida','AdminAsistenciaController@marcarSalida');

Route::resource('admin/reportes','ReporteController');