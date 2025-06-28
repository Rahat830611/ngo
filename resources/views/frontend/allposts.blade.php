@extends('layouts.front')
@section('content')
@php
     $firstsectionbig=DB::table('posts')->where('first_section_thumbnail',1)->orderBy('id','DESC')->first();
	 $firstsectionsmall=DB::table('posts')->where('first_section',1)->orderBy('id','DESC')->limit(20)->get();
	 $firstsectionheding=DB::table('posts')->where('headline',1)->orderBy('id','DESC')->limit(12)->get();
	 $post=DB::table('posts')->first();
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



 <div class="news-and-events">
		<div class="container">
			<h1 class="text-center news-and-events-title">NEWS & EVENTS</h1>
			<div class="news-and-events-items">
				<div class="row">
				
						@foreach($posts as $row)
					    @php
						$slug=preg_replace('/\s+/u', '-', trim($row->title_bn ??''));
					    @endphp
								<div class="col-md-6 col-sm-12 col-xs-12 news-col">
					<div class="news-and-events-box-content d-flex">
							<img src="{{ asset($row->image ??'') }}" style="width:200px; max-height:250px" class="img-fluid" alt="Microcredit Program">
							<div class="news-and-events-description">
								<a href="{{ URL::to('view-post/'.$row->id.'/'.$slug ??'') }}" class="service-box-clickable">
									<h3 class="news-and-events-box-content-title">{{ $row->title_bn ??'' }}</h3>
								</a>
								<p class="news-and-events-publish-info">Published in {{$post->post_date ??''}}</p>
								<p class="news-and-events-box-content-description">{{ $row->tags_en ??'' }}....</p>
								<div class="readmore">
										<a href="{{ URL::to('view-post/'.$row->id.'/'.$slug ??'') }}">READ MORE</a>
								</div>
							</div>
					</div>
				</div>
				@endforeach
				
				
				
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