@extends('layouts.front')

@section('content')
<style>
    .container h1 {
        color: #fff;
        text-align: center;
    }

    details {
        background-color: #F4BD4F;
        color: #fff;
        font-size: 1.5rem;
    }

    .expand {
        background-color: #f6e4c3;
        color: black;
        font-size: 12pt;
    }

    summary {
        padding: .5em 1.3rem;
        list-style: none;
        display: flex;
        justify-content: space-between;
        transition: height 1s ease;
    }

    summary::-webkit-details-marker {
        display: none;
    }

    summary:after {
        content: "\002B";
    }

    details[open] summary {
        border-bottom: 1px solid #aaa;
        margin-bottom: .5em;
    }

    details[open] summary:after {
        content: "\00D7";
    }

    details[open] div {
        padding: .5em 1em;
    }
</style>
<section class="products section container" id="course">
    <h2 class="section-title">FAQ</h2>
</section>
<section>
    <div class="container">
        <h1>Frequently Asked Questions</h1>
        <details>
            <summary>Apa itu YuBu : Yuk BudayaKu?</summary>
            <div class="expand">
                YuBu: Yuk BudayaKu merupakan website yang mengedukasi masyarakat agar lebih melek terhadap budaya,
                meningkatkan kesadaran budaya, melestarikan kebudayaan Indonesia, dan mempermudah akses informasi
                budaya.
            </div>
        </details>
    </div>
    <div class="container">
        <h1>Frequently Asked Questions</h1>
        <details>
            <summary>Apa keuntungan menggunakan Web YuBu : Yuk BudayaKu?</summary>
            <div class="expand">
                Belajar budaya dengan budayawan langsung, belajar lebih dalam mengenai budaya Indonesia dan memberikan
                kemudahan akses belajar budaya.
            </div>
        </details>
    </div>
    <div class="container">
        <h1>Frequently Asked Questions</h1>
        <details>
            <summary>Apakah YuBu menyediakan kursus atau pelajaran interaktif ?</summary>
            <div class="expand">
                Ya, situs ini meyediakan beragam kursus dan pelajaran interaktif yang dapat anda ikuti. Kami menawarkan
                modul pembelajaran terstruktur, vidio
                pembelajaran dan latihan soal. Dengan kursus ini anda dapat memperdalaman anda tentang budaya dan
                meningkatkan keterampilan anda secara efektif.
            </div>
        </details>
    </div>
    <div class="container">
        <h1>Frequently Asked Questions</h1>
        <details>
            <summary>Apakah ada biaya untuk mengakses kursus YuBu?</summary>
            <div class="expand">
                Ya, Untuk mengakses konten dan layanan kursus ada biaya terkait. Untuk biayanya bisa dilihat di 
            </div>
        </details>
    </div>
</section>
@endsection
