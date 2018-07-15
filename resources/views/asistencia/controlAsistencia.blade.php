@extends('crudbooster::admin_template')
@section('content')
<div class='panel panel-default'>
    <div class='panel-body'>
        <div class="container">
            <div class="row">
                <div class="col-md-2">
                    <button id="btn_marcarhe" type="button" class="btn btn-info">Marcar Hora Entrada</button>
                </div>
                <div class="col-md-2">
                    <button type="button" class="btn btn-warning">Marcar Hora Salida</button>
                </div>
                <div class="col-md-2">
                    <img src="{{asset('images/reloj.png')}}" alt="" width="100px" height="100px">
                </div>
                <div class="col-md-3">
                    <h2>{{$fecha}}</h2>
                    <h2>{{\Carbon\Carbon::now()->format('h:i:s A')}}</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-10">
                    <div id="tablaEmpleados"></div>
                </div>
            </div>
        </div>
    </div>
    <div class='panel-footer'>
        
    </div>
</div>
<script src="{{asset('js/jquery.min.js')}}"></script>

<script>
    $(document).ready(function(){
        $('#tablaEmpleados').kendoGrid({
            dataSource:{
                transport:{
                    read: "empleados?fecha="+'{{$fecha}}'
                }
            },
            resizable:true,
            columns:[
                {
                  selectable:true,
                    width:"40px"
                },
                {
                    field:'nombres',
                    title:'EMPLEADO'
                },
                {
                    field:'h_inicio',
                    title:'HORA ENTRADA'
                },
                {
                    field:'h_fin',
                    title:'HORA SALIDA'
                },
                {
                    field:'n_horas_extra',
                    title:'N° HORAS EXTRA'
                }
            ]
        });

        $("#btn_marcarhe").click(function () {
            //1. tomar todos los campos de la tabla
            //2. crear un objeto formdata con todos los objetos
            //3. Crear una función ajax para el envio
            //4. crear la funcion php que recibe el array
            //5. guardar en la base de datos iterando los ids

            var formdata = new FormData();
            var tabla = $("#tablaEmpleados").data("kendoGrid");
            var items = tabla.select();
            var itemsArr = [];
            items.each(function (k,v) {
                itemsArr.push(tabla.dataItem(v));
            });

            if(itemsArr.length > 0){
                swal({
                    title:"Alerta",
                    text: "DESEA REGISTRAR LA HORA DE ENTRADA DE LOS EMPLEADOS SELECCIONADOS?",
                    confirmButtonText: 'SI, Registrar!',
                    cancelButtonText: 'NO, CANCELAR!',
                    showCancelButton: true
                },function (confirm) {
                    if(confirm){
                        formdata.append("items",JSON.stringify(itemsArr));

                        $.ajax({
                            url:"marcarEntrada",
                            type:"POST",
                            data:formdata,
                            dataType:"html",
                            cache:false,
                            contentType:false,
                            processData:false
                        }).done(function (res) {
                            tabla.dataSource.read();
                        }).error(function (err) {
                            alert(false)
                        })
                    }
                });
            }else{
                swal("SELECCIONE UN DATO");
            }

        })
    });
</script>
@endsection