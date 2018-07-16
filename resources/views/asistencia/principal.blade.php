@extends('crudbooster::admin_template')
@section('content')
    <style>
        .fc-day{
            cursor:pointer;
        }
        .fc-day:hover{
            background:#95a5a6;
            color:white;
        }
    </style>
    <div id="calendar" style="background-color:lightskyblue;display: inline-block;"></div>
@endsection