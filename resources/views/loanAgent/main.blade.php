@extends('layouts.selfapply')
@push('css')
    {{-- write or link your css file and styles tag here --}}
    <link href="{{ asset('front/css/custom.css') }}" rel="stylesheet" type="text/css" />
    <style>
        .resend-otp-div a.disabled {
            pointer-events: none;
            cursor: not-allowed;
        }

        .bank-crousel {
            display: block !important;
        }

        .radio:checked {
            background: #ff653f;
            border-color: #ff653f;
        }

        .owl-carousel .owl-item img {
            width: 100% !important;
        }

        .testimonials-carousel .owl-item img {
            width: 100% !important;
        }

        @media screen and (max-width: 767px) {
            .hero-section {
                padding-top: 10px !important;
            }
        }

        .input-group-text {
            color: #666;
            border: none;
            background-color: #f5f6f8;
            line-height: 1.3;
            border-top-left-radius: 5px;
            border-bottom-left-radius: 5px;
            border-top-right-radius: 0px;
            border-bottom-right-radius: 0px;
        }

        .request-form .form-control:focus {
            background-color: #f5f6f8;
            border-color: #f5f6f8;
            border: none;
        }

        @media screen and (max-width:991px) {
            .input-group-text {
                padding: 1.06rem 1.06rem;
            }
        }

        @media screen and (min-width:992px) and (max-width:1199px) {
            .input-group-text {
                padding: 1rem 1rem;
                margin-top: 1px;
            }
        }
    </style>
@endpush
@section('content')
    <section id="hero-202" class="bg--fixed pt-100 pb-80">
        <div class="container">
            <div class="row d-flex align-items-center">
                <div class="col-lg-5 order-lg-2 order-1">
                    <div class="hero-8-img your-class">
                        <img src="{{ asset('front/images/hire-agent-lendingpage.png') }}" alt="WiseFinAI Loan Application"
                            class="img-fluid">
                    </div>
                </div>
                <div class="col-lg-7 order-lg-1 order-2 align-items-center m-auto">
                    <div id="hero-8-form" class="r-20">
                        <h2 class="s-40 w-700 mb-2">Explore Funding Up to <span class="color--green-500">₹50 Lakhs</span>
                        </h2>
                        <p class="s-16">Start with a few details and explore available loan options.</p>

                        <form method="post" action="{{ route('loan.agent.send.otp') }}"
                            class="request-form save-form-1 needs-validation" novalidate>
                            <div class="row g-2">
                                <div class="col-md-12">
                                    <div class="form-check ps-0">
                                        <div class="row gx-2">
                                            <div class="col-md-6 col-lg-6 col-sm-6 mb-2">
                                                <fieldset class="picker1">
                                                    <label class="card" for="personalloan">
                                                        <input type="radio" name="loan_type" id="personalloan"
                                                            value="1" class="radio" checked>
                                                        <span class="plan-details">
                                                            <span class="plan-type color--green-500">Personal
                                                                Loan</span>
                                                        </span>
                                                    </label>
                                                </fieldset>
                                            </div>
                                            <div class="col-md-6 col-lg-6 col-sm-6 mb-2">
                                                <fieldset class="picker1">
                                                    <label class="card" for="businessloan">
                                                        <input type="radio" name="loan_type" id="businessloan"
                                                            value="2" class="radio">
                                                        <span class="plan-details">
                                                            <span class="plan-type color--green-500">Business
                                                                Loan</span>
                                                        </span>
                                                    </label>
                                                </fieldset>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group form-floating">
                                        <input type="hidden" name="acc_type" value="2" id="acc_type">
                                        <div class="mb-2">
                                            <select name="user_type" id="user_type" class="form-control form-select">
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="input-group mobile-input">
                                        <span class="input-group-text">+91</span>
                                        <input type="text" name="mobile" id="mobile"
                                            class="numeric-input form-control name" placeholder="Enter 10 digit number"
                                            autocomplete="off" required maxlength="10" minlength="10" inputmode="numeric">
                                    </div>
                                    @component('components.ajax-error', ['field' => 'mobile'])
                                    @endcomponent
                                </div>
                                <div class="col-md-12 form-btn">
                                    <button type="submit" id="checkmodal" class="btn btn--theme hover--theme submit">Apply
                                        Now</button>
                                </div>
                                <div class="col-md-12"><span class="text-danger" id="usererrormsg"></span></div>

                                <div class="col-md-12">
                                    <p class="m-0 s-14 text-start text-dark"><input type="checkbox" checked="checked"
                                            class="tnc-checkbox" id="accept_tnc" name="accept_tnc" />&nbsp;<small>By
                                            submitting the form and
                                            proceeding, you agree to the <a href="{{ route('front.terms.conditions') }}"
                                                target="_blank" class="text-dark text-decoration-none">Terms of Use</a>
                                            and <a href="{{ route('front.privacy.policy') }}"
                                                class="text-dark text-decoration-none" target="_blank">Privacy
                                                Policy</a> of <a href="{{ route('front.home') }}"
                                                class="text-dark text-decoration-none" target="_blank">wisefinai.com.</a>
                                    </p>
                                    @component('components.ajax-error', ['field' => 'accept_tnc'])
                                    @endcomponent

                                    <p class="m-0 s-14 text-start text-dark"><input type="checkbox" checked="checked"
                                            class="tnc-checkbox" id="allow_sms" name="allow_sms" />&nbsp;<small>I agree to
                                            receive
                                            promotional &amp; Informational communications from WiseFinAI through
                                            Emails, calls or SMS Services.</small></p>
                                    @component('components.ajax-error', ['field' => 'allow_sms'])
                                    @endcomponent
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Affiliate NBFCs section starts -->
    <section id="integrations-2" class="py-80 integrations-section ">
        <div class="container">
            <div class="r-12 text-center">
                <div class="row justify-content-center">
                    <div class="col-md-12 col-lg-12">
                        <div class="section-title mb-40">
                            <h2 class="s-28 mb-5">Trusted by the <span class="color--green-500">Best in the
                                    Industry</span>
                            </h2>
                            <p class="s-16 color--grey mt-0">Partnering with the best NBFCs to provide the best for our
                                customers.</p>
                        </div>
                    </div>
                </div>
                @php
                    $lists = nbfcsList();
                @endphp
                <div class="bank-crousel">
                    <div class="row">
                        <div class="col text-center">
                            <div class="owl-carousel brands-carousel-6 emi-carousel">
                                {!! $lists['carousel'] !!}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Affiliate NBFCs section ends -->

    <section id="features-5" class="py-80 features-section division">
        <div class="container">
            <div class="fbox-wrapper text-center">
                <div class="row d-flex justify-content-center align-items-stretch g-4">

                    <div class="col-12 col-md-5">
                        <div class="fbox-5 fb-1 bg--green-100 r-16 h-100">
                            <div class="fbox-txt">
                                <h5 class="s-26 w-700">Expert Personal Loan Consultants</h5>
                            </div>
                            <img class="img-fluid" src="{{ asset('front/images/icon_img_1.png') }}"
                                alt="Expert Personal Loan Consultants" height="200" width="200">
                        </div>
                    </div>

                    <div class="col-12 col-md-5">
                        <div class="fbox-5 fb-1 bg--green-100 r-16 h-100">
                            <div class="fbox-txt">
                                <h5 class="s-26 w-700">Best Personal Loan Solutions for You</h5>
                            </div>
                            <img class="img-fluid" src="{{ asset('front/images/icon_img_2.png') }}"
                                alt="Best Personal Loan Solutions for You" height="200" width="200">
                        </div>
                    </div>

                    <div class="col-12 col-md-5">
                        <div class="fbox-5 fb-1 bg--green-100 r-16 h-100">
                            <div class="fbox-txt">
                                <h5 class="s-26 w-700">Personalised tips on improving & building score</h5>
                            </div>
                            <img class="img-fluid" src="{{ asset('front/images/icon_img_3.png') }}"
                                alt="Personalised tips on improving & building score" height="200" width="200">
                        </div>
                    </div>

                    <div class="col-12 col-md-5">
                        <div class="fbox-5 fb-1 bg--green-100 r-16 h-100">
                            <div class="fbox-txt">
                                <h5 class="s-26 w-700">Pre- approved offers</h5>
                            </div>
                            <img class="img-fluid" src="{{ asset('front/images/icon_img_4.png') }}"
                                alt="Pre- approved offers" height="200" width="200">
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <section id="video-content" class="pt-80 pb-80 division">
        <div class="container">
            <div class="row align-items-center g-4">
                <div class="col-12 col-lg-4">
                    <div class="text-center">
                        <video class="w-100 rounded" autoplay muted loop playsinline disablePictureInPicture
                            controlsList="nodownload nofullscreen noremoteplayback">
                            <source src="{{ asset('front/images/video/wisefin_process.mp4') }}" type="video/mp4">
                            Your browser does not support the video tag.
                        </video>
                    </div>
                </div>

                <div class="col-12 col-lg-8">
                    <div class="text-center">
                        <div class="section-title mb-40">
                            <h2 class="s-45 mb-5">Get started <span class="color--green-500">instantly</span> </h2>
                            <p class="s-16 color--grey mt-0">Apply for a personal loan from anywhere. It only takes a few
                                minutes!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="box-fancy py-80">
        <div class="container">
            <div class="row text-white">
                <div class="col-12 col-md-4 fancy-card bg--green-500">
                    <div style="">
                        <h1 class="text-white text-uppercase">01.</h1>
                        <h3 class="text-white mb-3">Eligibility Criteria</h3>

                        <p class="">NBFC Eligibility Criteria for Salaried:<br></p>
                        <p class="s-12 mb-0">Minimum Salary : Rs. 15,000 Monthly</p>
                        <p class="s-12 mb-0">Minimum Job Stability : 1 Year</p>
                        <p class="s-12 mb-0">Age : 21 Years or above</p>

                        <p class=" mt-3">NBFC Eligibility Criteria for Self-Employed:<br></p>
                        <p class="s-12 mb-0">Minimum 1 Year Business Stability</p>
                        <p class="s-12 mb-0">Minimum 1 Year IT Return</p>
                        <p class="s-12 mb-0">Age : 21 Years or above</p>
                    </div>
                </div>

                <div class="col-12 col-md-4 fancy-card bg--blue-300">
                    <div class="">
                        <h1 class="text-white text-uppercase">02.</h1>
                        <h3 class="text-white mb-3">How It Works?</h3>

                        <ul class="simple-list">
                            <li class="list-item">Quick Registration</li>
                            <li class="list-item">Check Eligibility</li>
                            <li class="list-item">Get Membership</li>
                            <li class="list-item">Document Submission</li>
                            <li class="list-item">Bank Verification</li>
                            <li class="list-item">Bank Sanction</li>
                        </ul>
                    </div>
                </div>

                <div class="col-12 col-md-4 fancy-card bg--blue-200">
                    <div class="">
                        <h1 class="text-white text-uppercase">03.</h1>
                        <h3 class="text-white mb-3">Why Choose Our Loan Consultant</h3>

                        <ul class="simple-list">
                            <li class="list-item">Dedicated Loan Advisor</li>
                            <li class="list-item">Fast Loan Processing</li>
                            <li class="list-item">Multiple Bank Options</li>
                            <li class="list-item">Easy Documentation</li>
                            <li class="list-item">Secure & Transparent Process</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="container my-4">

            <div class="row align-items-center">
                <div class="col-lg-7 col-md-7 col-12 mb-3">
                    <div class="section-title text-start mb-40">
                        <h2 class="s-28 mb-5">Trusted by <span class="color--green-500">millions</span></h2>
                        <p class="s-16 color--grey mt-0">Helping customers explore financing options through a clear and
                            convenient digital process.</p>
                    </div>

                    <div class="row g-4 text-start">

                        <div class="col-md-4 col-sm-4 col-12 mt-2 p-0">
                            <div class="address-item position-relative d-flex align-items-start">
                                <div class="feature-image feature-image-01 fb-2">
                                    <div class="ico-20 position-relative">
                                        <div class="color--green-500">
                                            <span class="flaticon-user"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="address-text ms-3">
                                    <h6 class="mb-1 s-24"> 5000+</h6>
                                    <p class="address-txt mt-0">
                                        Happy Users
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-4 col-12 mt-2 p-0">
                            <div class="address-item position-relative d-flex align-items-start">
                                <div class="feature-image feature-image-01 fb-2">
                                    <div class="ico-20 position-relative">
                                        <div class=" color--green-500">
                                            <span class="flaticon-file"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="address-text ms-3">
                                    <h6 class="mb-1 s-24"> 5</h6>
                                    <p class="address-txt mt-0">
                                        Loan Disbursed (Cr+)
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-12 mt-2 p-0">
                            <div class="address-item position-relative d-flex align-items-start">
                                <div class="feature-image feature-image-01 fb-2">
                                    <div class="ico-20 position-relative">
                                        <div class="color--green-500">
                                            <span class="flaticon-email"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="address-text ms-3">
                                    <h6 class="mb-1 s-24"> 10</h6>
                                    <p class="address-txt mt-0">
                                        NBFC Partners
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-5 col-12">
                    <div class="your-class">
                        <img src="{{ asset('front/images/reviews.png') }}" alt="" class="img-fluid">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Testimonioals section starts -->
    <section id="reviews-1" class="pt-80 pb-80 shape--06 reviews-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12 col-lg-12">
                    <div class="section-title mb-40">
                        <h2 class="s-28 mb-5">What Our <span class="color--green-500">Customer Says</span></h2>
                        <p class="s-16 color--grey mt-0">Hear directly from our customers about their experiences with us.
                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-2 col-md-12 col-12 mb-20 mb-lg-0">
                    <div
                        class="testimonial-rating-card text-center block-shadow r-20
                            d-flex flex-column align-items-center justify-content-center bg--green-500 h-100 ">
                        <h2 class="s-56 w-800 color--white mb-0">4.9</h2>
                        <div class="testimonial-rating-stars mb-10">
                            ★★★★★
                        </div>
                        <p class="color--white w-600 mb-0">
                            Customer Reviews
                        </p>
                    </div>
                </div>
                <div class="col-lg-10 col-md-12 col-12">
                    <!-- Testimonials carousel start  -->
                    @include('partials.front.testimonials')
                    <!-- Testimonials carousel end  -->
                </div>
            </div>
        </div>
    </section>
    <!-- Testimonioals section ends -->

    <section class="pt-0">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 card-main-warpper bg--green-100 pt-lg-4 pr-lg-4 pb-lg-2 pl-lg-4 p-4 m-auto">
                    <div class="row align-items-center">
                        <div class="col-lg-12">
                            <div class="text-end mb-3">
                                <img src="{{ asset('front/images/logo/logo.png') }}" alt="" class="img-fluid"
                                    width="200">
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12">
                            <div class="section-title text-start mb-40">
                                <h2 class="s-28 mb-5">Get an instant personal loan from <span
                                        class="color--green-500">WiseFinAI</span></h2>
                                <p class="s-16 color--grey mt-0">Fast, simple and secure personal loans at your fingertips
                                </p>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12 text-center">
                            <img src="{{ asset('front/images/card-image.png') }}" alt="" class="img-fluid">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="faqs-3" class="py-80 faqs-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12 col-lg-12">
                    <div class="section-title mb-40">
                        <h2 class="s-28 mb-5">Frequently Asked <span class="color--green-500">Questions</span></h2>
                        <p class="s-16 color--grey mt-0">Find answers to common questions about personal loans,
                            eligibility, documents, approvals, and more.</p>
                    </div>
                </div>
            </div>
            <div class="faqs-3-questions">
                <div class="row justify-content-center">
                    <div class="col-lg-12 col-xl-12">
                        <div class="accordion-wrapper">
                            <ul class="accordion">
                                <li class="accordion-item border border-radius-10 mb-3">
                                    <div class="accordion-thumb">
                                        <h6 class="s-16 w-400">1. What can you do with a personal loan?</h6>
                                    </div>
                                    <div class="accordion-panel">
                                        <div class="accordion-panel-item">
                                            <div class="faqs-2-answer">
                                                <p>A personal loan can be used to meet almost any personal financial need,
                                                    including medical expenses, education, home improvements, and debt
                                                    consolidation.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="accordion-item border border-radius-10 mb-3">
                                    <div class="accordion-thumb">
                                        <h6 class="s-16 w-400">2. What are the eligibility criteria for a personal loan?
                                        </h6>
                                    </div>
                                    <div class="accordion-panel">
                                        <div class="accordion-panel-item">
                                            <div class="faqs-2-answer">
                                                <p>The eligibility criteria for a personal loan are:</p>
                                                <p><strong>For Salaried Professionals:</strong></p>
                                                <div class="ps-2">
                                                    <p>&bull; Minimum Age: 21 Years </p>
                                                    <p>&bull; Minimum Salary: Rs.15,000 Per Month (Should reflect in bank
                                                        statement)</p>
                                                    <p>&bull; Minimum Job Stability: 1 Year</p>
                                                </div>
                                                <p><strong>For Self-Employed Individuals:</strong></p>
                                                <div class="ps-2">
                                                    <p>&bull; Minimum Age: 21 Years</p>
                                                    <p>&bull; Income Tax Return Of Minimum 1 Year</p>
                                                    <p>&bull; Minimum Business Duration: 1 Year</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="accordion-item border border-radius-10 mb-3">
                                    <div class="accordion-thumb">
                                        <h6 class="s-16 w-400">3. What documents do I need to apply for a personal loan?
                                        </h6>
                                    </div>
                                    <div class="accordion-panel">
                                        <div class="accordion-panel-item">
                                            <div class="faqs-2-answer">
                                                <p>The following are the general documents needed to apply for a personal
                                                    loan</p>
                                                <p><strong>For Salaried:</strong></p>
                                                <div class="ps-2">
                                                    <p>&bull; Aadhaar Card</p>
                                                    <p>&bull; PAN Card</p>
                                                    <p>&bull; Residence Proof: Rent agreement or Utility bills </p>
                                                    <p>&bull; Bank Statement </p>
                                                    <p>&bull; Income Proof: Salary Slips or Form 16</p>
                                                </div>
                                                <p><strong>For Self-Employed:</strong></p>
                                                <div class="ps-2">
                                                    <p>&bull; Aadhaar Card</p>
                                                    <p>&bull; PAN Card </p>
                                                    <p>&bull; Residence Proof: Rent agreement or Utility bills</p>
                                                    <p>&bull; Bank Statement </p>
                                                    <p>&bull; Balance Sheet</p>
                                                    <p>&bull; Income Computation</p>
                                                    <p>&bull; Service Tax Registration, License, Registration Certificate
                                                    </p>
                                                    <p>&bull; Income Tax Returns</p>
                                                </div>
                                                <p>Based on your profile and the guidelines, the lender may request
                                                    additional documents.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="accordion-item border border-radius-10 mb-3">
                                    <div class="accordion-thumb">
                                        <h6 class="s-16 w-400">4. Does credit score affect personal loan approval?</h6>
                                    </div>
                                    <div class="accordion-panel">
                                        <div class="accordion-panel-item">
                                            <div class="faqs-2-answer">
                                                <p>Yes, your credit score is a critical factor in the loan application
                                                    process. It is one of the most important factors that lenders use to
                                                    assess your creditworthiness.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="accordion-item border border-radius-10 mb-3">
                                    <div class="accordion-thumb">
                                        <h6 class="s-16 w-400">5. How can I increase my chances of getting a personal loan?
                                        </h6>
                                    </div>
                                    <div class="accordion-panel">
                                        <div class="accordion-panel-item">
                                            <div class="faqs-2-answer">
                                                <p>To increase your chances, keep a good credit score, have consistent
                                                    income, and provide accurate documentation during the application
                                                    process.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>

                                <li class="accordion-item border border-radius-10 mb-3">
                                    <div class="accordion-thumb">
                                        <h6 class="s-16 w-400">6. Do personal loans have any tax advantages?</h6>
                                    </div>
                                    <div class="accordion-panel">
                                        <div class="accordion-panel-item">
                                            <div class="faqs-2-answer">
                                                <p>Personal loans do not provide any direct tax advantages. However, if you
                                                    use a personal loan to invest in your business, renovate your home, or
                                                    fund your education, you may be able to deduct the interest you pay. For
                                                    more information, please contact your CA or tax advisor.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="accordion-item border border-radius-10 mb-3">
                                    <div class="accordion-thumb">
                                        <h6 class="s-16 w-400">7. Aside from credit scores, what other factors do lenders
                                            consider when approving personal loans?</h6>
                                    </div>
                                    <div class="accordion-panel">
                                        <div class="accordion-panel-item">
                                            <div class="faqs-2-answer">
                                                <p>In addition to the credit score, lenders take into account the
                                                    applicant's age, income, and job stability.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="py-20 bg--green-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12 col-lg-12 col-xl-12">
                    <div class="form-holder">
                        <div class="contact-form-notice">
                            <p class="s-14">
                                <strong>Important Note :</strong> We ask our customers to make payments ONLY on our website
                                wisefinai.com and NOT through any other source, directly or indirectly.
                            </p>
                            <p class="s-14">
                                <strong>Disclaimer : </strong>WiseFinAI Private Limited is not a lender or financial
                                institution. We do not provide loans or make credit decisions. All loan approvals, interest
                                rates, fees, and disbursal are handled by third-party lenders/NBFCs. We do not guarantee
                                loan approval, disbursal, or specific loan terms. The amount paid is only for the service
                                charge. We are not lenders and do not guarantee any loan approval. Loan approval,
                                disbursement/sanction is entirely dependent on NBFC criteria.
                            </p>
                            <p class="s-14">
                                <strong>Pre-Application Note:</strong> Users are advised to read our terms and conditions
                                and policies before proceeding/applying/registration.
                            </p>
                            <p class="s-14">
                                <strong>Registered Office Address:</strong> {{ config('constant.COMPANY_ADDRESS') }} </br>
                                <strong>Operational Office Address:</strong>
                                {{ config('constant.COMPANY_OPERATIONAL_ADDRESS') }} <br /> Mobile:
                                {{ config('constant.COMPANY_MOBILE') }} | Email: {{ config('constant.INFO_EMAIL') }}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- otp modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content p-30 border-radius-10">
                <form action="{{ route('loan.agent.verify.otp') }}" method="post"
                    class="request-form save-form-2 needs-validation" novalidate>
                    <div class="modal-body">
                        <div class="row">
                            <p class="s-24">OTP Verification</p>
                            <p class="s-16">Enter the 4 digit OTP received on your mobile <br />
                                <span class="text-success w-600">+91 <span class="text-success w-600"
                                        id="mobileNumber"></span>
                                    <a href="javascript:;" class="edit-phoneNumber" title="Edit Phone number">
                                        <svg width="40px" height="18px" viewBox="0 0 24.00 24.00" fill="none"
                                            xmlns="http://www.w3.org/2000/svg" stroke="#949494">
                                            <g id="SVGRepo_bgCarrier" stroke-width="0" />
                                            <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"
                                                stroke="#CCCCCC" stroke-width="0.43200000000000005" />
                                            <g id="SVGRepo_iconCarrier">
                                                <path
                                                    d="M15.4998 5.50067L18.3282 8.3291M13 21H21M3 21.0004L3.04745 20.6683C3.21536 19.4929 3.29932 18.9052 3.49029 18.3565C3.65975 17.8697 3.89124 17.4067 4.17906 16.979C4.50341 16.497 4.92319 16.0772 5.76274 15.2377L17.4107 3.58969C18.1918 2.80865 19.4581 2.80864 20.2392 3.58969C21.0202 4.37074 21.0202 5.63707 20.2392 6.41812L8.37744 18.2798C7.61579 19.0415 7.23497 19.4223 6.8012 19.7252C6.41618 19.994 6.00093 20.2167 5.56398 20.3887C5.07171 20.5824 4.54375 20.6889 3.48793 20.902L3 21.0004Z"
                                                    stroke="#949494" stroke-width="2" stroke-linecap="round"
                                                    stroke-linejoin="round" />
                                            </g>
                                        </svg>
                                    </a>
                                </span>
                            </p>
                            <div class="otp-form">
                                <div class="otp-container">
                                    <input type="text" class="otp-input" pattern="\d" maxlength="1">
                                    <input type="text" class="otp-input" pattern="\d" maxlength="1" disabled>
                                    <input type="text" class="otp-input" pattern="\d" maxlength="1" disabled>
                                    <input type="text" class="otp-input" pattern="\d" maxlength="1" disabled>
                                </div>
                            </div>
                            <span class="mt-2 s-12 text-success" id="msg">
                                <input type="hidden" id="verificationCode" name="otp" readonly>
                                <input class="form-check-input" value="1" type="hidden" id="flexCheckDefault1"
                                    checked name="allow_sms" />
                                <input class="form-check-input" value="1" type="hidden" id="flexCheckDefault"
                                    checked name="accept_tnc" />
                                <span class="text-danger f-w-400" id="invalidOtp" style="font-size:14px"></span>
                                @component('components.ajax-error', ['field' => 'otp'])
                                @endcomponent
                        </div>
                        <div class="row color--black resend-otp-div">
                            <p class="s-12">Didn’t receive the code? <a href="javascript:;" id="resendOtp"
                                    class="text-success">Resend OTP</a>&nbsp;<span id="timer"
                                    class="text-success">(00:15)</span></p>
                        </div>
                    </div>
                    <button type="submit" id="otpBtn" class="btn btn--theme hover--theme submit mt-3">Verify
                        OTP</button>
                </form>
            </div>
        </div>
    </div>
@endsection
@push('scripts')
    <script>
        document.addEventListener("DOMContentLoaded", function() {

            const personalLoan = document.getElementById("personalloan");
            const businessLoan = document.getElementById("businessloan");
            const userTypeSelect = document.getElementById("user_type");

            const personalOptions = [{
                    value: "1",
                    text: "Salaried"
                },
                {
                    value: "2",
                    text: "Self Employed"
                }
            ];

            const businessOptions = [{
                    value: "3",
                    text: "Small Business"
                },
                {
                    value: "4",
                    text: "Audited Report"
                }
            ];

            function toggleUserTypeOptions() {

                let type = "personal";

                if (businessLoan && businessLoan.checked) {
                    type = "business";
                }

                // Clear existing options
                userTypeSelect.innerHTML = "";

                // Select correct options
                const options = type === "business" ?
                    businessOptions :
                    personalOptions;

                // Add options
                options.forEach(function(option) {

                    const newOption = document.createElement("option");

                    newOption.value = option.value;
                    newOption.textContent = option.text;

                    userTypeSelect.appendChild(newOption);
                });
            }

            // Initial load
            toggleUserTypeOptions();

            // Personal / Business change
            if (personalLoan) {
                personalLoan.addEventListener("change", toggleUserTypeOptions);
            }

            if (businessLoan) {
                businessLoan.addEventListener("change", toggleUserTypeOptions);
            }

        });
    </script>

    <!-- write or link your script file and script tag here -->
    <script src="{{ asset('front/js/loanAgent.js') }}"></script>
    <script>
        window.onscroll = function() {
            const btn = document.getElementById("goTopBtn");
            btn.style.display = (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) ? "block" :
                "none";
        };

        // Scroll to top smoothly
        function goToTop() {
            window.scrollTo({
                top: 0,
                behavior: 'smooth'
            });
        }
    </script>
@endpush
