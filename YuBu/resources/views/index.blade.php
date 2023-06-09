@extends('layouts.front')

@section('content')
<section class="home" id="home">
    <div class="home-container container grid">
        <div class="home-img-bg">
            <img src="assets/images/bg-hero.jpg" alt="" class="home-img" />
        </div>

        <div class="home-data">
            <h1 class="home-title">
                Yuk Budayaku <br />
                Akses Mudah Untuk Belajar Budaya
            </h1>
            <p class="home-description">
                Mari kita jelajahi keindahan budaya dari berbagai penjuru
                Nusantara bersama kami
            </p>
            <div class="home-btns">
                <a href="{{ route('courses.index') }}" class="button btn-gray btn-small"> My Course </a>
                <a href="#course" class="button button-home">Discover Course</a>
            </div>
        </div>
    </div>
</section>

<section class="story section container">
    <div class="story-container grid">
        <div class="story-data">
            <h2 class="section-title story-section-title">Our Goals</h2>
            <h1 class="story-title">
                Memberikan Kemudahan Akses Untuk Belajar Budaya
            </h1>

            <p class="story-description">
                Temukan pengalaman belajar yang menarik tentang warisan budaya yang mempesona.
            </p>
            <a href="#course" class="button btn-small">Discover</a>
        </div>
        <div class="story-images">
            <img src="{{ asset('frontend/assets/images/goals1.jpg') }}" alt="" class="story-img" />
            <div class="story-square"></div>
        </div>
    </div>
</section>

<section class="products section container" id="course">
    <h2 class="section-title">All Course</h2>

    <div class="new-container">
        <div class="swiper new-swipper">
            <div class="swiper-wrapper">
                @foreach($courses as $course)
                <article class="products-card swiper-slide">
                    <a style="color: inherit;" href="{{ route('courses.show', [$course->slug]) }}"
                        class="products-link">
                        <img src="{{ Storage::url($course->course_image) }}" class="products-img" alt="" />
                        <h3 class="products-title">{{ $course->title }}</h3>
                        <div class="products-star">
                            @for ($star = 1; $star <= 5; $star++) @if ($course->rating >= $star)
                                <i class="bx bxs-star"></i>
                                @else
                                <i class='bx bx-star'></i>
                                @endif
                                @endfor
                        </div>
                        <span class="products-price">Rp. {{ $course->price }}</span>
                        @if($course->students()->count() > 5)
                        <button class="products-button">
                            Popular
                        </button>
                        @endif
                        <span class="products-student">
                            {{ $course->students()->count() }} students
                        </span>
                    </a>
                </article>
                @endforeach

            </div>
            <div class="swiper-button-next" style="
                bottom: initial;
                top: 50%;
                right: 0;
                left: initial;
                border-radius: 50%;
              ">
                <i class="bx bx-right-arrow-alt"></i>
            </div>
            <div class="swiper-button-prev" style="bottom: initial; top: 50%; border-radius: 50%">
                <i class="bx bx-left-arrow-alt"></i>
            </div>
        </div>
    </div>
</section>

<section class="testimonial section container">
    <div class="testimonial grid">
        <div class="swiper testimonial-swipper">
            <div class="swiper-wrapper">
                <div class="testimonial-card swiper-slide" style="text-align: center;">
                    <div class="testimonial-quote">
                        <i class="bx bxs-quote-alt-left"></i>
                    </div>
                    <p class="testimonial-description">
                        Membangun proyek ini adalah pengalaman yang cukup mengesankan dan sekaligus melelahkan.
                        Tapi saya berharap proyek ini dapat berjalan dengan baik dan dikembangkan lebih jauh
                    </p>
                    <h3 class="testimonial-date">April 27, 2023</h3>

                    <div class="testimonial-profile"
                        style="justify-content: center;flex-direction: column;row-gap: 1.4rem;">
                        <img src="{{ asset('frontend/assets/images/testimonial1.jpg') }}" alt=""
                            class="testimonial-profile-img" />

                        <div class="testimonial-profile-data">
                            <span class="testimonial-profile-name">Aebil Taskari Rusydi</span>
                            <span class="testimonial-profile-detail">Project Manager</span>
                        </div>
                    </div>
                </div>
                <div class="testimonial-card swiper-slide" style="text-align: center;">
                    <div class="testimonial-quote">
                        <i class="bx bxs-quote-alt-left"></i>
                    </div>
                    <p class="testimonial-description">
                        Belajar bahasa daerah menggunakan YuBu menjadi lebih mudah!
                    </p>
                    <h3 class="testimonial-date">April 27, 2023</h3>

                    <div class="testimonial-profile"
                        style="justify-content: center;flex-direction: column;row-gap: 1.4rem;">
                        <img src="{{ asset('frontend/assets/images/testimonial1.jpg') }}" alt=""
                            class="testimonial-profile-img" />

                        <div class="testimonial-profile-data">
                            <span class="testimonial-profile-name">Demitria Mayana A</span>
                            <span class="testimonial-profile-detail">Analyst</span>
                        </div>
                    </div>
                </div>
                <div class="testimonial-card swiper-slide" style="text-align: center;">
                    <div class="testimonial-quote">
                        <i class="bx bxs-quote-alt-left"></i>
                    </div>
                    <p class="testimonial-description">
                        Website ini menyediakan pembelajaran yang sangat menyenangkan dan dapat membantu memahami
                        nilai-nilai dari pembelajaran kebudayaan. Selain itu, Website ini juga membantu dalam
                        memperkenalkan budaya budaya Indonesia kepada masyarakat luas.
                    </p>
                    <h3 class="testimonial-date">May 20, 2023</h3>

                    <div class="testimonial-profile"
                        style="justify-content: center;flex-direction: column;row-gap: 1.4rem;">
                        <img src="{{ asset('frontend/assets/images/testimonial1.jpg') }}" alt=""
                            class="testimonial-profile-img" />

                        <div class="testimonial-profile-data">
                            <span class="testimonial-profile-name">Dewaldi Saputra</span>
                            <span class="testimonial-profile-detail">Programmer</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="testimonial-card swiper-slide" style="text-align: center;">
                <div class="testimonial-quote">
                    <i class="bx bxs-quote-alt-left"></i>
                </div>
                <p class="testimonial-description">
                    Belajar di YuBu ini sangat meyenangkan karena kita dapat langsung menguji wawasan dengan fitur Kuis
                    yang disediakan.
                </p>
                <h3 class="testimonial-date">May 21, 2023</h3>

                <div class="testimonial-profile"
                    style="justify-content: center;flex-direction: column;row-gap: 1.4rem;">
                    <img src="{{ asset('frontend/assets/images/testimonial1.jpg') }}" alt=""
                        class="testimonial-profile-img" />

                    <div class="testimonial-profile-data">
                        <span class="testimonial-profile-name">Vadela Risti</span>
                        <span class="testimonial-profile-detail">Programmer</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="testimonial-card swiper-slide" style="text-align: center;">
            <div class="testimonial-quote">
                <i class="bx bxs-quote-alt-left"></i>
            </div>
            <p class="testimonial-description">
                Pembelajaran yang tersedia pada Website YuBu ini sangat Menarik!
            </p>
            <h3 class="testimonial-date">May 27, 2023</h3>

            <div class="testimonial-profile"
                style="justify-content: center;flex-direction: column;row-gap: 1.4rem;">
                <img src="{{ asset('frontend/assets/images/testimonial1.jpg') }}" alt=""
                    class="testimonial-profile-img" />

                <div class="testimonial-profile-data">
                    <span class="testimonial-profile-name">Caesyerra Siti Fatimah</span>
                    <span class="testimonial-profile-detail">Programmer</span>
                </div>
            </div>
        </div>
    </div>

        <div class="swiper-button-next" style="right: 30%;left: initial;top:initial;bottom: 3rem;">
            <i class="bx bx-right-arrow-alt"></i>
        </div>
        <div class="swiper-button-prev" style="right: initial;left: 30%;top:initial;bottom: 3rem;">
            <i class="bx bx-left-arrow-alt"></i>
        </div>
    </div>
</section>

<section class="newsletter section container">
    <div class="newsletter-bg grid">
        <div>
            <h2 class="newsletter-title">
                Subscribe Our <br />
                Newsletter
            </h2>
            <p class="newsletter-description">
                Dapatkan berita terbaru melalui email anda
            </p>
        </div>

        <form action="" class="newsletter-subscribe">
            <input type="email" placeholder="Enter your email" class="newsletter-input" />
            <a href="/" class="button">BUTTON</a>
        </form>
    </div>
</section>
@endsection
