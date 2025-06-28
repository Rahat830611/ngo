@extends('layouts.front')
@section('meta')
  <title>Health Care</title>
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
			<h1 class="custom-page-title text-center text-white">{{ $seo->service4_tittle ??'' }}</h1>
			<h6 class="custom-page-subtitle text-center"></h6>
			<div class="slug-description">
				<h5 class="career-text-title"><font style="color="#d6a5bd"><a href="{{ URL::to('/institute') }}" target="_blank">{{ $seo->service4_tittle ??'' }}: </a></font><span style="background-color: rgb(0, 0, 0);"><br></span></h5><p></p>

<p style="text-align:justify">{!! $seo->service4_text ??'' !!}</p>

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