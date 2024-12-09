<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="font-awesome/css/fontawesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="font-awesome/css/all.css">
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css"
    />
    <link href="css/style.css" rel="stylesheet" />

    <title>KopiKane | Cafe Recommendation</title>
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

    <!-- Banner start-->

    <div class="banner">
      
      <div class="content cosan-title active">
    
   
        <h1>COSAN COFFEE</h1>
        <h4>
          <span>24 Jam</span>
          <span>Nongkrong</span>
          <span>Seturan</span>
        </h4>
        <p>
          Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cumque
          accusamus consequatur ad alias, autem laboriosam.
        </p>
        <div class="button">
          <a href="#">Watch More</a>
        </div>
        
      </div>
      

      <div class="content laju-title">
        <!-- <img src="./src/assets/image/cosan-logo.png" alt="" class="logo-kafe" />-->

        <h1>LAJU KOPI</h1>
        <h4>
          <span>24 Jam</span>
          <span>Nongkrong</span>
          <span>Seturan</span>
        </h4>
        <p>
          Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cumque
          accusamus consequatur ad alias, autem laboriosam.
        </p>
        <div class="button">
          <a href="#">Watch More</a>
        </div>
      </div>

      <div class="content ethikopia-title">
        <!-- <img src="./src/assets/image/cosan-logo.png" alt="" class="logo-kafe" />-->

        <h1>ETHIKOPIA COFFEEBAY</h1>
        <h4>
          <span>24 Jam</span>
          <span>Nongkrong</span>
          <span>Seturan</span>
        </h4>
        <p>
          Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cumque
          accusamus consequatur ad alias, autem laboriosam.
        </p>
        <div class="button">
          <a href="#">Watch More</a>
        </div>
      </div>

      <div class="content bolivar-title">
        <!-- <img src="./src/assets/image/cosan-logo.png" alt="" class="logo-kafe" />-->

        <h1>BOLIVAR COFFEE</h1>
        <h4>
          <span>24 Jam</span>
          <span>Nongkrong</span>
          <span>Seturan</span>
        </h4>
        <p>
          Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cumque
          accusamus consequatur ad alias, autem laboriosam.
        </p>
        <div class="button">
          <a href="#">Watch More</a>
        </div>
      </div>

      <div class="content udmitra-title">
        <!-- <img src="./src/assets/image/cosan-logo.png" alt="" class="logo-kafe" />-->

        <h1>UD MITRA</h1>
        <h4>
          <span>24 Jam</span>
          <span>Nongkrong</span>
          <span>Seturan</span>
        </h4>
        <p>
          Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cumque
          accusamus consequatur ad alias, autem laboriosam.
        </p>
        <div class="button">
          <a href="#">Watch More</a>
        </div>
      </div>

      <div class="content cw-title">
        <!-- <img src="./src/assets/image/cosan-logo.png" alt="" class="logo-kafe" />-->

        <h1>CW COFFEE</h1>
        <h4>
          <span>24 Jam</span>
          <span>Nongkrong</span>
          <span>Seturan</span>
        </h4>
        <p>
          Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cumque
          accusamus consequatur ad alias, autem laboriosam.
        </p>
        <div class="button">
          <a href="#">Watch More</a>
        </div>
      </div>

      <div class="carousel-box">
        <div class="carousel">
          <div
            class="carousel-item"
            onClick="changeBg('cosan.jpg', 'cosan-title');"
          >
            <img src="./image/cosan-card.jpeg" alt="" />
          </div>
          <div
            class="carousel-item"
            onClick="changeBg('lajukopi.jpg', 'laju-title');"
          >
            <img src="./image/laju.jpg" alt="" />
          </div>
          <div
            class="carousel-item"
            onClick="changeBg('ethikopia.jpeg', 'ethikopia-title');"
          >
            <img src="./image/ethi-card.jpg" alt="" />
          </div>
          <div
            class="carousel-item"
            onClick="changeBg('bolivar.jpeg', 'bolivar-title');"
          >
            <img src="./image/bolivar-card.jpg" alt="" />
          </div>
          <div
            class="carousel-item"
            onClick="changeBg('udmitra.jpg', 'udmitra-title');"
          >
            <img src="./image/mitra-card.jpg" alt="" />
          </div>
          <div
            class="carousel-item"
            onClick="changeBg('cwjogja.jpg', 'cw-title');"
          >
            <img src="./image/cw-card.jpg" alt="" />
          </div>
          
        </div>
      </div>
    </div>

    <!-- Banner end-->
  </body>

  <script src="js/script.js"></script>
  <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
  <script>
    $(document).ready(function () {
      $(".carousel").carousel();
    });
  </script>
</html>
