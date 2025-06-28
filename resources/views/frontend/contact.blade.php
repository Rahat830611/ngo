@extends('layouts.front')
@section('meta')
  <title>Contct With US</title>
@endsection
@section('content')
@php
     $firstsectionbig=DB::table('posts')->where('first_section_thumbnail',1)->orderBy('id','DESC')->first();
	 $firstsectionsmall=DB::table('posts')->where('first_section',1)->orderBy('id','DESC')->limit(5)->get();
	 $firstsectionheding=DB::table('posts')->where('headline',1)->orderBy('id','DESC')->limit(5)->get();
	 $user=DB::table('users')->first();
     $setting=DB::table('settings')->first();
	 $seo=DB::table('seos')->first();
@endphp
 <!--============Scroll 03 start==============-->
    @php
	 $headline=DB::table('posts')
                        ->join('categories','posts.cat_id','categories.id')
                        ->join('subcategories','posts.subcat_id','subcategories.id')
                        ->select('posts.*','categories.category_bn','subcategories.subcategory_bn')
                        ->where('posts.headline',1)
                        ->orderBy('id','DESC')
                        ->limit(5)
                        ->get();               
	 @endphp  
	 	<style>
		.custom-page .container {
			background-color: #fff;
			padding: 15px;
		}


		.custom-page .custom-page-title {
			padding: 15px 0 30px;
			margin-top: 15px;
			margin-bottom: 30px;
			background-image: url("{{ asset('public/frontend/img/courses/upcoming_banner.jpg') }}");
		}
		
		.slug-description img {
		    margin: 15px;
		    
		}
		
		.slug-description figcaption{
		    text-align:center;
		}
	</style>

	<div class="custom-page">
		<div class="container">
			<h1 class="custom-page-title text-center text-white">Contact US</h1>
			<h6 class="custom-page-subtitle text-center"></h6>
			<div class="row">
			<div class="col-md-8 col-sm-12 col-xs-12 contacts-col">
					<div class="contact-wrapper">
							<h2 class="text-left address-title">Contact with Us</h2>
																								<form method="POST" action="/contact-us">
									<input type="hidden" name="_token" value="vyhTa4WvTkQr9utsDjvbvM9k1u8qlWnBMsPqiY9u">									<div class="form-row">
										<div class="col">
											<label for="to">To</label>
											<input type="text" class="form-control" name="to" readonly value=" {{ $setting->email ??''}}   ">
										</div>
									</div>
									<br>

									<div class="form-row">
										<div class="col">
											<label for="email">From</label>
											<input type="text" class="form-control" id="email" name="email" placeholder="Email Address" onfocus="this.placeholder=''" onblur="this.placeholder='Email Address'" required>
										</div>
									</div>
									<br>
									<div class="form-row">
										<div class="col">
											<label for="subject">Subject</label>
											<input type="text" class="form-control" name="subject" placeholder="Subject" onfocus="this.placeholder=''" onblur="this.placeholder='Subject'" required>
										</div>
									</div>
									<br>

									<div class="form-group">
										<label for="message">Message</label>
										<textarea class="form-control" id="message" name="message" rows="5"></textarea>
									</div>
									<br>
									<button type="submit" class="btn btn-primary">Send</button>
								</form>
						</div>
			</div>
			<div class="col-md-4 col-sm-12 com-xs-12 contacts-col">
					<div class="contact-address">
							<h5>Address:</h5>
							<ul>
								<li><i class="far fa-building"></i> {{ $seo->meta_title }}</li>
								<li class="d-flex">
									<i class="fas fa-home"></i>
    								
    								<span>
									 {{$setting->address_bn ??''}}
    								</span>
							</li>
							<li><i class="fas fa-phone-square"></i>{{ $setting->phone_bn ??''}} </li>
							<li><i class="far fa-envelope"></i> {{ $setting->email ??''}}</li>
							<li><i class="fas fa-globe-asia"></i>{{ $setting->phone_en }}</li>
							</ul>

					</div>
							
					
			</div>
		</div>
	</div>
</div>

	<script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
}
</script>

<script type="text/javascript" src="../translate.google.com/translate_a/elementa0d8.js?cb=googleTranslateElementInit"></script>


@endsection