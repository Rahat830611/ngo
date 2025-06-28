@extends('layouts.front')
@section('meta')
  <title>{{ $post->title_bn ??''}}</title>
  <meta property="og:url" content="{{Request::fullUrl()}}" />
  <meta property="og:type" content="website" />
  <meta property="og:title" content="{{ $post->title_bn ??''}}" />
  <meta property="og:image" content="{{URL::to($post->image ??'')}}" />
@endsection
@section('content')
@php
     $firstsectionbig=DB::table('posts')->where('first_section_thumbnail',1)->orderBy('id','DESC')->first();
	 $firstsectionsmall=DB::table('posts')->where('first_section',1)->orderBy('id','DESC')->limit(5)->get();
	 $firstsectionheding=DB::table('posts')->where('headline',1)->orderBy('id','DESC')->limit(5)->get();
	 $user=DB::table('users')->first();
     $setting=DB::table('settings')->first();
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

 <div class="single-news-wrapper">
	<div class="container">
		<h1 class="single-news-title">{{ $post->title_bn ??''}} </h1>
		<p class="single-news-publish-info">Published in {{ $post->post_date  ??''}}</p>
		<div class="clearfix">
			<div class="single-news-img-wrapper text-center">
				<img src="{{ asset($post->image ??'') }}" id="blog-post-img" alt="blog post image" class="img-fluid" width="500" height="500">
			</div>
			<div class="single-news-description">
				<p>{!! $post->details_bn ??'' !!}</p>
			</div>
		</div>
	</div>
</div>

	<script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
}
</script>

<script type="text/javascript" src="../../translate.google.com/translate_a/elementa0d8.js?cb=googleTranslateElementInit"></script>


@endsection