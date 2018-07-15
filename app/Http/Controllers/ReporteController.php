<?php

namespace App\Http\Controllers;

use App\Asistencias;
use App\Empleado;
use Barryvdh\DomPDF\Facade as PDF;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ReporteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['title'] = "REPORTES";
        return view('reportes.principal',["title"=>"hhh"]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $desde = $request->get('fecha_desde');
        $hasta = $request->get('fecha_hasta');
        $empleado = Empleado::with('asistencias')->get();

        foreach($empleado as $emp){
            $sumaHE = 0;
            $sumaHL = 0;
            foreach($emp->asistencias as $as){
                $sumaHE = $sumaHE+$as->n_horas_extra;
                $sumaHL = $sumaHL+$as->n_horas_laboradas;
            }
            $emp->horas_laboradas = $sumaHL;
            $emp->horas_extras = $sumaHE;
        }
        $pdf = PDF::loadView('reportes.reporte',["empleado"=>$empleado]);
        return $pdf->stream();
        //return view('reportes.reporte',["result"=>$result]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
