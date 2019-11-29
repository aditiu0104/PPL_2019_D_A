@extends('template')

{{-- @section('content') --}}


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Monitoring Suhu</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="{{ asset('/css/monitorings.css') }}">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
{{-- script untuk auto refresh --}}
  <script src="{{asset('js/jquery-latest.js')}}"></script>
  <script>
  var refreshId = setInterval(function()
  {
     $('#responsecontainer').load('home.blade.php');
  }, 1000);
  </script>
{{-- style="overflow:hidden ; margin-top:70px;" --}}
</head>
<body >
  <br>


  <div class="row">
    <div class="col-md-1">

    </div>
    <div class="col-md-4" >


      <img class=" col-md-12 style=" display: block; margin: 0 auto;  src="{{ asset('/image/jamur.png ') }}" >

    </div>
    <div class="col-md-1" >

    </div>

    <div class="col-md-2  " id="responsecontainer">


      <img class=" col-md-12 gambar2 style=" display: block;margin: 0 auto; padding-top: 70px; src="{{ asset ('/image/temperature.png ') }}">
      @foreach ($suhu1 as $temperature )


      @endforeach
      <td >
        <h1 style="text-align:center; font-size:80px;"> {{ $temperature->suhu }}°C</h1>

      </td>
      <h1 style="text-align:center;font-size:40px;">Temperature</h1>


    </div>
    <div class="col-md-4" >

    </div>



  </div>




</body>
</html>


{{--
@endsection --}}
