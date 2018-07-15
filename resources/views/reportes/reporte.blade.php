<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
</head>
<body>
<table border="1">
    <thead>
        <tr>
            <th>Item</th>
            <th>Nombre</th>
            <th># Horas Laboradas</th>
            <th># Horas Extras</th>
        </tr>
    </thead>
    <tbody>
    @php
        $count = 1;
        $sumaHE = 0;
    @endphp
    @foreach($empleado as $emp=>$value)
        <tr>
            <td>{{$count}}</td>
            <td>{{$value->nombres}}</td>
            <td>{{$value->horas_laboradas}}</td>
            <td>{{$value->horas_extras}}</td>
        </tr>
        @php $count++; @endphp
    @endforeach
    </tbody>
</table>
</body>
</html>