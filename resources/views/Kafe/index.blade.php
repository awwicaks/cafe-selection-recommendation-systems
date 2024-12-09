<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="font-awesome/css/fontawesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="font-awesome/css/all.css">
    <link rel="stylesheet" href="css/cafe.css"/>
    
    <title>Document</title>
</head>
<body>
    
 <!-- Header start -->
  
 <header>
    <a class="logo">KopiKane</a>
    <ul class="nav">
      <li><a href="/">Home</a></li> 
      <li><a href="kafe">Cafe</a></li>
    </ul>
    <div class="search">
      <input type="text" placeholder="Search" />
      <i class="fa-solid fa-magnifying-glass"></i>
    </div>
  </header>

  <!-- Header end -->

<!-- Section Cafe Start-->



  <section class="cafes" id="cafes">
    <div class="row">



        @foreach($data as $kafe)
      <div class="cafe-card">
          <div class="cafe-image">
              <img src="image/coffee shop.jpg" alt="coffeeshop">
          </div>
        <div class="cafe-content">
          <div class="cafe-title" id="cafe-title">
              <a href="{{ route('kafe.detail', ['id' => $kafe->id_kafe]) }}">{{ $kafe->nama_kafe }}</a>
          </div>
          <div class="cafe-address" id="cafe-address">
              <h3>Alamat</h3>
              <p>{{ $kafe->alamat_kafe }}</p>
          </div>
        </div>
      </div>
      @endforeach
      
      
    </div>
  </section>



<!--Section Cafe End-->

</body>
</html>