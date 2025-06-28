@extends('layouts.front')
@section('content')
@php
     $firstsectionbig=DB::table('posts')->where('first_section_thumbnail',1)->orderBy('id','DESC')->first();
	 $firstsectionsmall=DB::table('posts')->where('first_section',1)->orderBy('id','DESC')->limit(20)->get();
	 $firstsectionheding=DB::table('posts')->where('headline',1)->orderBy('id','DESC')->limit(12)->get();
     $setting=DB::table('settings')->first();
	 $social=DB::table('socials')->first();
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
        
 
 
 <div class="slider-upcomingdates">
	<div class="container-fluid" style="padding-left: 0px;padding-right: 0px;">
		<div class="row no-gutters">
			<!-- <div class="col-md-3 col-sm-12 col-xs-12 home-upcoming-col">
				<div class="upcomingdates">
					<h5 class="upcomingdates-title"><i class="far fa-calendar-alt notranslate"></i> Upcoming Course Dates</h5>
					<div class="upcomingdates-content-wrapper">
						
					</div>
				</div>
			</div> -->
			<div class="col-md-12 col-sm-12 col-xs-12">
				<!-- Jssor Slider Begin -->
				<div id="slider1_container" style="visibility: hidden; position: relative; margin: 10px auto; width: 1140px; height: 442px; overflow: hidden;">
					<!-- Loading Screen -->
					<div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
						<img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="img/svg/spin.svg" />
					</div>

					<!-- Slides Container -->
					<div data-u="slides" style="position: absolute; left: 0px; top: 0px; width: 1140px; height: 442px;
								overflow: hidden;">
						<div>
							<img data-u="image" src="{{ asset($setting->baner1 ??'') }}" />
						</div>
						<div>
							<img data-u="image" src="{{ asset($setting->baner2 ??'') }}" />
						</div>
						<div>
							<img data-u="image" src="{{ asset($setting->baner3 ??'') }}" />
						</div>
					</div>

					<!--#region Bullet Navigator Skin Begin -->
					<!-- Help: https://www.jssor.com/development/slider-with-bullet-navigator.html -->
					<div data-u="navigator" class="jssorb031" style="position:absolute;bottom:12px;right:12px;" data-autocenter="1"
					 data-scale="0.5" data-scale-bottom="0.75">
						<div data-u="prototype" class="i" style="width:16px;height:16px;">
							<svg viewBox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
								<circle class="b" cx="8000" cy="8000" r="5800"></circle>
							</svg>
						</div>
					</div>
					<!--#endregion Bullet Navigator Skin End -->

					<!--#region Arrow Navigator Skin Begin -->
					<!-- Help: https://www.jssor.com/development/slider-with-arrow-navigator.html -->
					<div data-u="arrowleft" class="jssora051" style="width:55px;height:55px;top:0px;left:25px;" data-autocenter="2"
					 data-scale="0.75" data-scale-left="0.75">
						<svg viewBox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
							<polyline class="a" points="11040,1920 4960,8000 11040,14080 "></polyline>
						</svg>
					</div>
					<div data-u="arrowright" class="jssora051" style="width:55px;height:55px;top:0px;right:25px;" data-autocenter="2"
					 data-scale="0.75" data-scale-right="0.75">
						<svg viewBox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
							<polyline class="a" points="4960,1920 11040,8000 4960,14080 "></polyline>
						</svg>
					</div>
					<!--#endregion Arrow Navigator Skin End -->
				</div>
				<!-- Jssor Slider End -->
			</div>
		</div>
	</div>
</div>
<div class="welcome-text">
</div>

<div class="career-text">
	<div class="container">
		<div class="row no-gutters">
			<div class="col-md-7 col-sm-12 col-xs-12 career-col">
				<div class="career-text-col-wrapper">
					<h3 class="career-text-title">Welcome to {{ $seo->meta_title }}</h3>
					<p class="career-text-description">{{$setting->institute_info_short ??''}}</p>
					<div class="career-buttons">
					    
						
						<a href="{{ URL::to('/institute') }}" class="about-button" role="button" aria-pressed="true">Read More</a>
					</div>
				</div>
			</div>
			<div class="col-md-5 col-sm-12 col-xs-12 career-col">
				<div class="career-text-col-img">
					<img src="{{ asset($setting->institutehistoryimages ??'') }}" alt="{{$setting->institute_history ??''}} " class="img-fluid">
				</div>
			</div>
		</div>

	</div>
</div>

<!-- courses -->
<div class="home-page-courses">
	<div class="container">
		<h1 class="text-center text-uppercase">Our Services</h1>
		<div class="row no-gutters">
						<div class="col-md-4 col-sm-4 col-xs-12 -col">
				<div class="">
					<div class="front">
						<a href="courses/business-10.html">
							<img src="{{ asset($setting->service1_images ??'') }}" class="img-fluid" alt="Microcredit Program" />
						</a>
					</div>
					<div class="back">
						<a href="{{ URL::to('/service1') }}">
							<h2 class="title">{{ $seo->service1_tittle	 ??''}} </h2>
							<p class="shortdescription"></p>
						</a>
					</div>
				</div>
			</div>
						<div class="col-md-4 col-sm-4 col-xs-12 -col">
				<div class="">
					<div class="front">
						<a href="{{ URL::to('/service2') }}">
							<img src="{{ asset($setting->service2_images ??'') }}" class="img-fluid" alt="Business Development Program" />
						</a>
					</div>
					<div class="back">
						<a href="courses/it-11.html">
							<h2 class="title">{{ $seo->service2_tittle	 ??''}}</h2>
							<p class="shortdescription"></p>
						</a>
					</div>
				</div>
			</div>
						<div class="col-md-4 col-sm-4 col-xs-12 -col">
				<div class="">
					<div class="front">
						<a href="{{ URL::to('/service3') }}">
							<img src="{{ asset($setting->service3_images ??'') }}" class="img-fluid" alt="Woman Help Service" />
						</a>
					</div>
					<div class="back">
						<a href="{{ URL::to('/service4') }}">
							<h2 class="title">{{ $seo->service3_tittle	 ??''}}</h2>
							<p class="shortdescription"></p>
						</a>
					</div>
				</div>
			</div>
						<div class="col-md-4 col-sm-4 col-xs-12 -col">
				<div class="">
					<div class="front">
						<a href="{{ URL::to('/service4') }}">
							<img src="{{ asset($setting->service4_images ??'') }}" class="img-fluid" alt="Health Care" />
						</a>
					</div>
					<div class="back">
						<a href="{{ URL::to('/service5') }}">
							<h2 class="title">{{ $seo->service4_tittle	 ??''}}</h2>
							<p class="shortdescription"></p>
						</a>
					</div>
				</div>
			</div>
						<div class="col-md-4 col-sm-4 col-xs-12 -col">
				<div class="">
					<div class="front">
						<a href="{{ URL::to('/service6') }}">
							<img src="{{ asset($setting->service5_images ??'') }}" class="img-fluid" alt="Others Work" />
						</a>
					</div>
					<div class="back">
						<a href="courses/others-14.html">
							<h2 class="title">{{ $seo->service5_tittle	 ??''}}</h2>
							<p class="shortdescription"></p>
						</a>
					</div>
				</div>
			</div>
						<div class="col-md-4 col-sm-4 col-xs-12 -col">
				<div class="">
					<div class="front">
						<a href="courses/social-work-16.html">
							<img src="{{ asset($setting->service6_images ??'') }}" class="img-fluid" alt="Social Work" />
						</a>
					</div>
					<div class="back">
						<a href="courses/social-work-16.html">
							<h2 class="title">{{ $seo->service6_tittle	 ??''}}</h2>
							<p class="shortdescription"></p>
						</a>
					</div>
				</div>
			</div>
					</div>
	</div>
</div>



&nbsp;
<section>
	<div class="container">
                    @php
					$firstcat=DB::table('categories')->first();
					$firstcatpostbig=DB::table('posts')->where('cat_id',$firstcat->id)->where('bigthumbnail',1)->orderBy('id','DESC')->first();
					$firstcatpostsmall=DB::table('posts')->where('cat_id',$firstcat->id)->where('categoryhomepage',1)->orderBy('id','DESC')->limit(10)->get();
					@endphp	
		<h1 class="text-center text-uppercase"> Latest News & Events </h1><br>
		<div class="row no-gutters">
		
		@foreach($firstcatpostsmall as $row)
		@php
         $slug=preg_replace('/\s+/u', '-', trim($row->title_bn ??''));
         @endphp
           <div class="col-md-4 col-sm-4 col-xs-12 -col">
				<div class="news">
					<div class="front">
						<a href="{{ URL::to('view-post/'.$row->id.'/'.$slug ??'') }}">
							<img src="{{ asset($row->image ??'')}}" class="img-fluid" alt="Social Work" />
						</a>
					</div>
				    <div class="back front">
						<a href="{{ URL::to('view-post/'.$row->id.'/'.$slug ??'') }}">
							<h3 class="title">{{ $row->title_bn ??'' }}</h3>
							{{ $row->tags_en ??'' }}
						</a>
						<a class="text-primary strong" href="{{ URL::to('view-post/'.$row->id.'/'.$slug ??'') }}">Read more</a>
    				</div>
				</div>
			</div>
				@endforeach			
						
						
						
					</div>
	</div>
</section>


	<script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
}
</script>

<script type="text/javascript" src="/translate.google.com/translate_a/elementa0d8.js?cb=googleTranslateElementInit"></script>


 
				@endsection