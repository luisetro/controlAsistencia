@extends('crudbooster::admin_template')
@section('content')
    <div class='panel panel-default'>
        <div class='panel-heading'>Reportes</div>
        <div class='panel-body'>
            <div class="container">
                <form action="reportes/create">
                <div class="row">
                    <div class="col-md-1">
                        <label for="">Desde:</label>
                    </div>
                    <div class="col-md-5">
                        <input type="date" name="fecha_desde" value="{{\Carbon\Carbon::now()->format('Y-m-d')}}">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-1">
                        <label for="">Hasta:</label>
                    </div>
                    <div class="col-md-5">
                        <input type="date" name="fecha_hasta" value="{{\Carbon\Carbon::now()->format('Y-m-d')}}">
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-10">
                        <button class="btn btn-success" type="submit">Generar Reporte</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
@endsection