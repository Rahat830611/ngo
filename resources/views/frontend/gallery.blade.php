@extends('layouts.front')
@section('meta')
  <title>Branch</title>
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

	<div class="gallery">
		<div class="container">
			<h1 class="text-center gallery-title">Gallery</h1>
			<div class="gallaries-wrapper">
				<div class="row testimonials-videos">
										</div>
				<div class="row">
                @php
				$photobig=DB::table('photos')->where('type',1)->orderBy('id','DESC')->limit(8)->get();
				$photosmall=DB::table('photos')->where('type',1)->orderBy('id','DESC')->limit(100000)->get();
				@endphp
				
@foreach($photosmall as $row)
										<div class="col-md-4 col-sm-6 col-xs-12 galleries-col">
						<div class="overlay-container">
							<a data-fancybox="gallery" data-caption="MAYNA Foundation" href="{{ asset($row->photo ??'')}}">
								<figure class="overlay-image text-center">
									<img src="{{ asset($row->photo ??'')}}" alt="MAYNA Foundation" class="img-fluid">
									<figcaption class="overlay">{{ $row->title ??''}}</figcaption>
								</figure>
							</a>
						</div>
					</div>
										 @endforeach
					
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