@extends('layouts.front')

@section('content')
<style>

.container h1{
  color: #fff;
  text-align: center;
}

details{
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

summary:after{
  content: "\002B";
}

details[open] summary {
    border-bottom: 1px solid #aaa;
    margin-bottom: .5em;
}

details[open] summary:after{
  content: "\00D7";
}

details[open] div{
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
            <summary>How do I create accordion?</summary>
            <div class="expand">
                The tags <em>details</em> and <em>summary</em> have you covered.
            </div>
        </details>
    </div>
    <div class="container">
        <h1>Frequently Asked Questions</h1>
        <details>
            <summary>How do I create accordion?</summary>
            <div class="expand">
                The tags <em>details</em> and <em>summary</em> have you covered.
            </div>
        </details>
    </div>
    <div class="container">
        <h1>Frequently Asked Questions</h1>
        <details>
            <summary>How do I create accordion?</summary>
            <div class="expand">
                The tags <em>details</em> and <em>summary</em> have you covered.
            </div>
        </details>
    </div>
    <div class="container">
        <h1>Frequently Asked Questions</h1>
        <details>
            <summary>How do I create accordion?</summary>
            <div class="expand">
                The tags <em>details</em> and <em>summary</em> have you covered.
            </div>
        </details>
    </div>
</section>
@endsection
