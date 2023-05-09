@extends('layouts.front')

@section('content')
    <section class="products section container" id="course">
        <h2 class="section-title">Article</h2>
    </section>
    <section>
        <div class="card" style="width: 18rem;">
            <img src="{{ asset('frontend/assets/images/goals.jpg') }}" class="card-img-top" alt="...">
            <div class="card-body">
                <h3>Card title</h5>
                <p>Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                <br>
                <a class="button btn-small" href="#" role="button">Link</a>
            </div>
        </div>
    </section>
@endsection