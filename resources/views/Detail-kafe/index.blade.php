<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="src/css/detail.css">
    <title>Detail Kafe</title>
</head>
<body>

    @extends('kafe.index')
    
    @section('content')

    <section class="gambar-kafe">
     
            <h2>{{ $data->nama_cafe }}</h2>
       

        <div class="row">
            <div class="gallery-kafe">
                <div class="gallery-gambar">
                    <img src="src/assets/image/kafe1.jpg" alt="">
                </div>
                <div class="gallery-content">
                    <a href="gallery.html">View All Photos</a>
                </div>
            </div>
            <div class="gallery-kafe">
                <div class="gallery-gambar">
                    <img src="src/assets/image/kafe2.jpg" alt="">
                </div>
                <div class="gallery-content">
                    <a href="gallery.html">View All Photos</a>
                </div>
            </div>
            <div class="gallery-kafe">
                <div class="gallery-gambar">
                    <img src="src/assets/image/kafe3.jpg" alt="">
                </div>
                <div class="gallery-content">
                    <a href="gallery.html">View All Photos</a>
                </div>
            </div>
        </div>

    </section>

        <section class="informasi-kafe">
        <div class="row">
            <div class="informasi-card">
              <div class="informasi-content">
                <div class="informasi-title" id="cafe-title">
                    <h1>About</h1>
                </div>
                <div class="about-kafe" id="cafe-address">
                    <h3>Best For</h3>
                    <p>WFC | Nongkrong | Nugas</p>
                    <h3>Jam Buka</h3>
                    <p>07.00 - 23.00 WIB</p>
                    <h3>Signature Menu</h3>
                    <p>kopi susu gula aren | kopi susu hazelnut | kopi susu caramel | red velvet | milkshake oreo</p>
                    <h3>Kisaran Harga</h3>
                    <p>Rp 18.000 - Rp 35.000</p>
                </div>
              </div>
            </div>
      
            <div class="informasi-card">
                <div class="informasi-content">
                    <div class="informasi-title" id="cafe-title">
                        <h1>Lokasi & Kontak</h1>
                    </div>
                        <div class="maps-kafe">
                            <img src="src/assets/image/maps_kafe.jpg" alt="">
                        </div>
                    <div class="about-kafe" id="cafe-address">
                        <h3>Alamat</h3>
                        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Id nulla autem deleniti.</p>
                        <h3>Kontak</h3>
                        <p>08134659630</p>
                        <h3>Media Sosial</h3>
                        <p>@jokopiseturan (instagram)</p>
                    </div>
                </div>
            </div>
        </div>
        </section>

        @endsection
        
   <script>
    const galleryItem = document.getElementsByClassName("gallery-item");
    const lightBoxContainer = document.createElement("div");
    const lightBoxContent = document.createElement("div");
    const lightBoxImg = document.createElement("img");
    const lightBoxPrev = document.createElement("div");
    const lightBoxNext = document.createElement("div");

    lightBoxContainer.classList.add('lightbox');
    lightBoxContent.classList.add('lightbox-content');
    lightBoxPrev.classList.add("fa", "fa-angle-left", "lightbox-prev");
    lightBoxNext.classList.add("fa", "fa-angle-right", "lightbox-next");

    lightBoxContainer.appendChild(lightBoxContent);
    lightBoxContent.appendChild(lightBoxImg);
    lightBoxContent.appendChild(lightBoxPrev);
    lightBoxContent.appendChild(lightBoxNext);
    document.body.appendChild(lightBoxContainer);

    let index = 1;

    function showLightBox(n) {
        if (n > galleryItem.length) {
            index = 1;
        } else if(n < 1) {
            index = galleryItem.length;
        }

        let imageLocation = galleryItem[index-1].children[0].getAttribute("src");
        lightBoxImg.setAttribute("src", imageLocation);
    }

    function currentImage() {
        lightBoxContainer.style.display="block";

        let imageIndex = parseInt(this.getAttribute("data-index"));
        showLightBox(index = imageIndex);
    }

    for (let i = 0; i<galleryItem.length; i++) {
        galleryItem[i].addEventListener("click", currentImage);
    }

    function sliderImage(n) {
        showLightBox(index += n);
    }

    function prevImage() {
        sliderImage(-1);
    }

    function nextImage() {
        sliderImage(1);
    }

    lightBoxPrev.addEventListener("click", prevImage);
    lightBoxNext.addEventListener("click", nextImage);

    function closeLightBox() {
        if(this === event.target) {
            lightBoxContainer.style.display = "none";
        }
    }

    lightBoxContainer.addEventListener("click", closeLightBox);


   </script>


</body>
</html>