@extends('template')





{{--
<div>
<h1 style="padding-top:20px;">Report</h1>

<div>


<ul class="nav nav-tabs">
<li class="nav-item">
<a class="nav-link "  href="{{route ('warming')}}">Warming</a>
</li>
<li class="nav-item">
<a class="nav-link"  href="{{route ('laporan')}}">Cooling</a>
</li>

</ul>
<div class="tab-content">
<div class="tab-pane container active" id="home">...</div>
<div class="tab-pane container fade" id="menu1">...</div>

</div>


</br>
</div>
</div>

@section('content')
<link rel="stylesheet" type="text/css" href="{{ asset('/css/laporan.css') }}">

<h2>Today</h2>
@foreach ($tanggal2 as $tanggall )

<button type="submit" class="btn btn-dark">{{$tanggall->waktu}} {{$tanggall->suhu  }}°C </button>

@endforeach
</div>
<div >


<br>

<h2>Yesterday</h2>
@foreach ($tanggal1 as $tanggalll )

<button type="submit" class="btn btn-light">{{$tanggalll->waktu}} {{$tanggalll->suhu  }}°C </button>

@endforeach
</br>
</div>
</div>
@endsection --}}

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Laporan</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="{{ asset('/css/laporan.css') }}">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

  <style>

  button {
  margin-top:1022px;

  }
  .nav nav-tabs {
    background-color: black;
  }

</style>
</head>
<body>
  <br>

  <div class="container">
    <h2>Report</h2>
    <br>
    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
      <li class="nav-item">
        <a class="nav-link active" data-toggle="tab" href="#home" >Warming</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-toggle="tab" href="#menu1">Cooling</a>
      </li>

    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
      <div id="home" class="container tab-pane active"><br>

        <h2>Today</h2>
        @foreach ($tanggal4 as $tanggall4 )



          <button style="margin-top:10px; margin-left:5px;" type="submit" class="btn btn-dark">{{$tanggall4->waktu}} {{$tanggall4->suhu  }}°C </button>

        @endforeach

        <h2>Yesterday</h2>
        @foreach ($tanggal3 as $tanggall3 )

          <button style="margin-top:10px; margin-left:5px;" type="submit" class="btn btn-light">{{$tanggall3->waktu}} {{$tanggall3->suhu  }}°C </button>

        @endforeach

      </div>
      <div id="menu1" class="container tab-pane fade"><br>

        <h2>Today</h2>
        @foreach ($tanggal2 as $tanggall )

          <button style="margin-top:10px; margin-left:5px;" type="submit" class="btn btn-dark">{{$tanggall->waktu}} {{$tanggall->suhu  }}°C </button>

        @endforeach

        <h2>Yesterday</h2>
        @foreach ($tanggal1 as $tanggalll )

          <button style="margin-top:10px; margin-left:5px;" type="submit" class="btn btn-light">{{$tanggalll->waktu}} {{$tanggalll->suhu  }}°C </button>

        @endforeach
      </div>


    </div>
  </div>

</body>
</html>
