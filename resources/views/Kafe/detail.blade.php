<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="{{ asset('css/detail.css') }}">
    <title>Detail Kafe</title>
</head>
<body>

  

   

    <section class="gambar-kafe">
     
            <h2>{{ $kafe->nama_kafe }}</h2>
       

        <div class="row">
            <div class="gallery-kafe">
                <div class="gallery-gambar">
                    <img src="{{ asset('image/coffee shop.jpg') }}" alt="">
                </div>
                <div class="gallery-content">
                    <a href="gallery.html">View All Photos</a>
                </div>
            </div>
            <div class="gallery-kafe">
                <div class="gallery-gambar">
                    <img src="{{ asset('image/coffee shop.jpg') }}" alt="">
                </div>
                <div class="gallery-content">
                    <a href="gallery.html">View All Photos</a>
                </div>
            </div>
            <div class="gallery-kafe">
                <div class="gallery-gambar">
                    <img src="{{ asset('image/coffee shop.jpg') }}" alt="">
                </div>
                <div class="gallery-content">
                    <a href="gallery.html">View All Photos</a>
                </div>
            </div>
        </div>

    </section>


   
    <section class="informasi-kafe-about">
   
        <div class="row-about">
            <div class="informasi-card-about">
              <div class="informasi-content-about">
                <div class="informasi-title" id="cafe-title">
                </div>
                <div class="about-kafe-about" id="">
                 
                    <p>{{ $kafe->deskripsi_kafe }}</p>
                
              </div>
            </div>
      
           
        </div>
        </section>

        <section class="informasi-kafe">
        <div class="row">
            <div class="informasi-card">
              <div class="informasi-content">
                <div class="informasi-title" id="cafe-title">
               
                </div>
                <div class="about-kafe" id="cafe-address">
                    <h3>Best For</h3>
                    <p>XXXXXXX | XXXXXXX | XXXXXXX</p>
                    <h3>Jam Buka</h3>
                    <p>XX.XX - XX.XX WIB</p>
                    <h3>Signature Menu</h3>
                    <p>XXXXXXX | XXXXXXX | XXXXXXX | XXXXXXX | XXXXXXX</p>
                    <h3>Kisaran Harga</h3>
                    <p>Rp XX.000 - Rp XX.000</p>
                </div>
              </div>
            </div>
      
            <div class="informasi-card">
                <div class="informasi-content">
                    <div class="informasi-title" id="cafe-title">
                        <h1>Lokasi & Kontak</h1>
                    </div>
                       
                    <div class="about-kafe" id="cafe-address">
                        <h3>Alamat</h3>
                        <p>{{ $kafe->alamat_kafe }}</p>
                        <h3>Kontak</h3>
                        <p>08xxxxxxxxx</p>
                        <h3>Media Sosial</h3>
                        <p>@yourcoffeshop(instagram)</p>    
                    </div>
                </div>
            </div>
        </div>
        </section>


    <h2>Best Recommendation</h2>

    <section class="cafes" id="cafes">
    <div class="row">
        @foreach ($rekomendasi as $rek)
      <div class="cafe-card">
          <div class="cafe-image">
              <img src="{{ asset('image/coffee shop.jpg') }}" alt="coffeeshop">
          </div>
        <div class="cafe-content">
            <div class="cafe-title" id="cafe-title">
                <a href="{{ route('kafe.detail', ['id' => $rek['sisrek']->id_kafe]) }}">{{ $rek['sisrek']->nama_kafe }}</a>
            </div>
            <div class="cafe-address" id="cafe-address">
                <h3>Alamat</h3>
                <p>{{ $rek['sisrek']->alamat_kafe }}</p>
            </div>
        </div>
      </div>
      @endforeach
    </div>
  </section>


    

</body>
</html>