@extends('layouts.front')

@section('content')
    <section class="products section container" id="course">
        <h2 class="section-title">Article</h2>
    </section>
    <section>
        <div class="card" style="width: 18rem;">
            <img src="{{ asset('frontend/assets/images/goals.jpg') }}" class="card-img-top" alt="...">
            <div class="card-body">
                <h3>70 Bahasa Bugis dan Artinya</h5>
                <p>Bahasa Bugis dan artinya perlu kamu pahami, terutama bagi kamu yang tinggal di lingkungan orang-orang yang mendiami pulau Sulawesi ini. Orang-orang dengan suku Bugis biasanya bisa kamu temui di Makassar dan sekitarnya.</p>
                <br>
                <a class="button btn-small" href="https://www.liputan6.com/hot/read/5187403/70-bahasa-bugis-dan-artinya-dari-kosakata-hingga-contoh-kalimatnya" role="button">Link</a>
            </div>
        </div>
    </section>
@endsection