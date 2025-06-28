@php
	$category=DB::table('categories')->orderBy('id','ASC')->get();
	$seo=DB::table('seos')->first();
	$social=DB::table('socials')->first();
	$horizontal1=DB::table('ads')->where('type',2)->first();
	$setting=DB::table('settings')->first();
@endphp
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
	   <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="{{ $seo->meta_author ??'' }}">
        <meta name="keyword" content="{{ $seo->meta_keyword ??''}}">
        <meta name="description" content="{{ $seo->meta_description ??''}}">
        <meta name="google-verification" content="{{ $seo->google_verification ??''}}">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        @yield('meta')
     
        <title>{{ $seo->meta_title }}</title>
         
     <link rel="icon" href="{{ asset($setting->favicon ??'') }}">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Old+Standard+TT:400,400i,700|Roboto:400,500,700|Open+Sans:200,300,400,400i,600,600i,700,700i,800,800i|family=Ubuntu:400,700">
<link rel="stylesheet" href="{{ asset('public/frontend/assets/vendor/fontawesome-541/css/all.min.css') }}">
<link rel="stylesheet" href="{{ asset('public/frontend/assets/vendor/bootstrap-413/css/bootstrap.min.css') }}">
<link rel="stylesheet" href="{{ asset('public/frontend/assets/vendor/bootstrap-select/css/bootstrap-select.min.css') }}">
<link rel="stylesheet" href="{{ asset('public/frontend/assets/vendor/flag-icon/css/flag-icon.min.css') }}">
<link rel="stylesheet" href="{{ asset('public/frontend/assets/frontend/css/swiper.min.css') }}">
<link rel="stylesheet" href="{{ asset('public/frontend/assets/frontend/css/slider.css') }}">
<link rel="stylesheet" href="{{ asset('public/frontend/assets/frontend/css/common.css') }}">
<link rel="stylesheet" href="{{ asset('public/frontend/assets/frontend/css/header.css') }}">
<link rel="stylesheet" href="{{ asset('public/frontend/assets/frontend/css/flip.css') }}">
<link rel="stylesheet" href="{{ asset('public/frontend/assets/frontend/owlcarousel/owl.carousel.min.css') }}">
<link rel="stylesheet" href="{{ asset('public/frontend/assets/frontend/owlcarousel/owl.theme.default.min.css') }}">
<link rel="stylesheet" href="{{ asset('public/frontend/assets/frontend/css/style.css') }}">
<link rel="stylesheet" href="{{ asset('public/frontend/assets/frontend/css/footer.css') }}">
<link rel="stylesheet" href="{{ asset('public/frontend/assets/frontend/css/responsive.css') }}"></head>

<body>
	<div id="fb-root"></div>
<script>
	try {
		(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id)) return;
		js = d.createElement(s); js.id = id;
		js.src = '../connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.2&appId=1866725426691446&autoLogAppEvents=1';
		fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	} catch (error) {

	}
</script>
<style>
* {box-sizing: border-box;}

body { 
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.header {
  overflow: hidden;
  background-color: #ae1026;
    padding: 8px 99px;
     padding: 8px 99px;
    color: #fff;
    font-weight: bold;
}

.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius: 4px;
}

.header a.logo {
  font-size: 25px;
  font-weight: bold;
}

.header a:hover {
  background-color: #ddd;
  color: black;
}

.header a.active {
  background-color: dodgerblue;
  color: white;
}

.header-right {
  float: right;
}

@media  screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  
  .header-right {
    float: none;
  }
}
</style>
<header>
    <!--    <div class="header">-->
    <!--  Mobile: +88 016174359384-->
    <!--  <div class="header-right">-->
    <!--    Email: info@tripleoneair.com-->
    <!--  </div>-->
    <!--</div>-->
 
	
	
	<div class="top-header">
		<div class="container">
			<div class="row no-gutters align-items-center">
				<div class="col-md-9 col-sm-12 col-xs-12 align-self-end">
					<div class="tagline">
					<a href="{{ URL::to('/') }}">
							<img src="{{ asset($setting->logo ??'') }}" class="img-fluid" alt="mayna wellfare Foundation">
							<!-- <div class="slogan">
								<h5 class="title">Tokyo Dhaka Language Center</h5>
								<h5 class="subtitle">You Born Again in Japan</h5>
							</div> -->
						</a>
						<!-- <h4 class="tagline-text">North South Academic </h4> -->
						<!-- <div class="japan-bangladesh-button">
							<a class="btn btn-success btn-bangladesh" href="/about-bangladesh" role="button">Bangladesh</a>
							<a class="btn btn-danger btn-japan" href="/about-japan" role="button">Japan</a>
						</div> -->
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 support-mobile-list wow slideInRight" data-wow-delay=".1s">
				<div class="support-mobile-1">
				    <a href="{{ $social->facebook ??''}}">
					<div class="support-head-icon">
					<!-- <i class="fab fa-facebook-f" style="font-size:18px;padding: 6px 13px;"></i> -->
					<i class="fab fa-facebook-f"></i>
					</div>
					</a>
					<a href="{{ $social->twitter ??''}}">
					<div class="support-head-icon">
					
						<i class="fab fa-twitter"></i>
						
					</div>
				</div>
				</a>
				<a href="{{ $social->linkedin ??''}}">
				<div class="support-mobile-1 support-icon-1">
					<div class="support-head-icon">
					
						<i class="fab fa-linkedin-in"></i>
						
					</div>
					</a>
					<a href="{{ $social->instagram ??''}}">
					<div class="support-head-icon">
					
						<i class="fab fa-instagram"></i>
						
					</div>
					</a>
					<a href="{{ $social->youtube ??''}}">
					<div class="support-head-icon">
					
					<i class="fab fa-youtube"></i>
						
					</div>
					</a>
					
					
					
					
				</div><br><br>
    				<div id="google_translate_element"></div>
			</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="bottom-header">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-dark">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
				 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mx-auto">
						<li class="nav-item active">
							<a class="nav-link home-link-nav active" href="{{ URL::to('/') }}">Home <span class="sr-only">(current)</span></a>
						</li>
						
						<li class="nav-item">
							<a class="nav-link about-link-nav " href="{{ URL::to('/institute') }}">About Us</a>
						</li>
					<li class="nav-item">
							<a class="nav-link about-link-nav " href="{{ URL::to('/branch') }}">Branch</a>
						</li>
					
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle " id="coursesDropdown" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false">
							Our Services
							</a>

							<ul class="dropdown-menu" aria-labelledby="coursesDropdown">
							
							
							<li><a class="dropdown-item" href="{{ URL::to('/service1') }}">Microcredit Program</a></li>
							 <li><a class="dropdown-item" href="{{ URL::to('/service2') }}">Business Development Program</a></li>
							 <li><a class="dropdown-item" href="{{ URL::to('/service3') }}">Woman Help Service</a></li>
							 <li><a class="dropdown-item" href="{{ URL::to('/service4') }}">Health Care</a></li>
							 <li><a class="dropdown-item" href="{{ URL::to('/service5') }}">Others Work</a></li>
							 <li><a class="dropdown-item" href="{{ URL::to('/service6') }}">Social Work</a></li>
							 
						<!--</li>-->
							</ul>
							
						</li>

						<li class="nav-item">
							<a class="nav-link about-link-nav " href="{{ URL::to('/gallery') }}">Gallery</a>
						</li>
						
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" id="coursesDropdown" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false">
						    Important Links
							</a>
							<ul class="dropdown-menu" aria-labelledby="coursesDropdown">
				@php
				 	$website=DB::table('websites')->get();
				 @endphp
				 @foreach($website as $row)
							<li><a class="dropdown-item" href="{{ $row->website_link ??''}}" target="_blank">{{ $row->website_name ??''}}</a></li>
                     @endforeach 
							</ul>
						</li>
						
						
						
						
						
						
						
						
						
						
						
<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle " id="coursesDropdown" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false">
							News & Offers
							</a>

							<ul class="dropdown-menu" aria-labelledby="coursesDropdown">
							
							@foreach($category as $row)
							<li><a class="dropdown-item" href="{{ URL::to('post/'.$row->id.'/'.$row->category_bn ??'')}}">{{ $row->category_bn ??''}}</a></li>
							@endforeach
							 
						<!--</li>-->
							</ul>
							
						</li>
						
						<li class="nav-item">
							<a class="nav-link " href="contact-us.html">Contact Us</a>
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
</header>
	
	
	           @yield('content')
	
	
	
	<!-- footer -->
	<footer>
	    
		<div class="footer-middle">
		   
			<div class="container-fluid">
			    
				<div class="row">
				    
				    <div class="col-lg-4 col-md-3 col-sm-6 col-xs-12 footer-middle-col" style="background: #333434;">
						<h5 style="color: #fff;">Connect with Us</h5>
						<ul>
								<li><i class="far fa-building"></i> {{ $seo->meta_title }}</li>
								<li class="d-flex">
									<i class="fas fa-home"></i>
    								
    								<span>
									      {{$setting->address_bn ??''}}  
    								</span>
							</li>
							<li><i class="fas fa-phone-square"></i>{{ $setting->phone_bn ??''}}  </li>
							<li><i class="far fa-envelope"></i>  {{ $setting->email ??''}}  </li>
							<li><i class="fas fa-globe-asia"></i>{{ $setting->phone_en ??''}}</li>
							</ul><br>
						<br>
					</div>
					<div class="col-lg-4 col-md-2 col-sm-6 col-xs-12 footer-middle-col" style="background: #2d3030;">
						<h5 style="color: #fff;">Our Services</h5>
						<ul>
														<li class="d-flex align-items-center">
									<i class="fas fa-list"></i>
									<span class="course-span">
										<a style="color: #fff;" href="{{ URL::to('/service1') }}">{{ $seo->service1_tittle	 ??''}}</a>
									</span>
							</li>
														<li class="d-flex align-items-center">
									<i class="fas fa-list"></i>
									<span class="course-span">
										<a style="color: #fff;" href="{{ URL::to('/service2') }}">{{ $seo->service2_tittle	 ??''}}</a>
									</span>
							</li>
														<li class="d-flex align-items-center">
									<i class="fas fa-list"></i>
									<span class="course-span">
										<a style="color: #fff;" href="{{ URL::to('/service3') }}">{{ $seo->service3_tittle	 ??''}}</a>
									</span>
							</li>
														<li class="d-flex align-items-center">
									<i class="fas fa-list"></i>
									<span class="course-span">
										<a style="color: #fff;" href="{{ URL::to('/service4') }}">{{ $seo->service4_tittle	 ??''}}</a>
									</span>
							</li>
														<li class="d-flex align-items-center">
									<i class="fas fa-list"></i>
									<span class="course-span">
										<a style="color: #fff;" href="{{ URL::to('/service5') }}">{{ $seo->service5_tittle	 ??''}}</a>
									</span>
							</li>
														<li class="d-flex align-items-center">
									<i class="fas fa-list"></i>
									<span class="course-span">
										<a style="color: #fff;" href="{{ URL::to('/service6') }}">{{ $seo->service6_tittle	 ??''}}</a>
									</span>
							</li>
													</ul><br>
						
					</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 footer-middle-col" style="background: #272a2a;">
						
     <h5 style="color: #fff;">Join us with facebook</h5>
      <!------------------Start Facebook Like------------------> 
            <div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div></div></div>
            <script>(function(d, s, id) {
              var js, fjs = d.getElementsByTagName(s)[0];
              if (d.getElementById(id)) return;
              js = d.createElement(s); js.id = id;
              js.src = "../connect.facebook.net/en_US/all.js#xfbml=1";
              fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));</script>
            <style>
            ._4s7c{
             border:0px;
            }
            </style>
            <div class="fb-like-box fb_iframe_widget" data-href="a-widthed" fb-iframe-plugin-query="app_id=&amp;container_width=255&amp;header=false&amp;height=200&amp;href=https%3A%2F%2Fwww.facebook.com%2FUttara-Host-518589035168125%2F&amp;locale=en_US&amp;sdk=joey&amp;show_faces=true&amp;stream=false&amp;width=240"><span style="vertical-align: bottom; width: 240px; height: 70px;"><iframe name="f30b018bb751a2c" width="240px" height="200px" data-testid="fb:like_box Facebook Social Plugin" title="fb:like_box Facebook Social Plugin" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/plugins/page.php?href=https://www.facebook.com/{{$setting->facebookpage ??''}}&amp;tabs=time&amp;width=260&amp;height=150&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId=334182264340964" class=""></iframe></span></div>
            <!------------------End...:Facebook Like------------------> 

						</div>
				</div>
				</div>
			
		</div>
		
		
		
		
		<div class="footer-bottom text-center">
			&copy; All rights reserved by {{ $seo->meta_title }}. Developed by <a href="http://www.elitedesign.com.bd/" target="blank"style="color: #fff;">Elite Design </a> <a
			 href="http://www.elitedesign.com.bd/" target="blank" style="color: #fff;"></a>
		</div>
	</footer>





	<script src="{{ asset('public/frontend/assets/frontend/js/jquery-3.3.1.min.js') }}"></script>
<script src="{{ asset('public/frontend/assets/frontend/js/popper.min.js') }}"></script>
<script src="{{ asset('public/frontend/assets/vendor/bootstrap-413/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('public/frontend/assets/vendor/bootstrap-select/js/bootstrap-select.min.js') }}"></script>
<script src="{{ asset('public/frontend/assets/vendor/flip/jquery.flip.min.js') }}"></script>

<script src="{{ asset('public/frontend/assets/frontend/js/jssor.slider.min.js') }}"></script>
<script src="{{ asset('public/frontend/assets/frontend/js/swiper.min.js') }}"></script>
<script src="{{ asset('public/frontend/assets/frontend/js/slider.js') }}"></script>
<script src="{{ asset('public/frontend/assets/frontend/js/owlcarousel/owl.carousel.min.js') }}"></script>
<script>
try {
	var swiper = new Swiper(".swiper-container", {
		slidesPerView: 1,
		loop: true,
		// spaceBetween: 30,
		// effect: 'fade',
		grabCursor: true,
		pagination: {
			el: ".swiper-pagination",
			dynamicBullets: true
		},
		autoplay: {
			delay: 2500,
			disableOnInteraction: false
		}
	});
	} catch (error) {

	}
</script>
<script>
$('.carousel-inner').owlCarousel({
    loop:true,
    margin:0,
    responsiveClass:true,
    nav:false,
    autoplay:true,
    responsive:{
        0:{
            items:1,
            nav:true
        },
        600:{
            items:4,
            nav:true
        },
        1000:{
            items:7,
            nav:true,
            loop:true
        }
    }
})
</script>
<script>
	$( document ).ready(function() {
		$(function(){
			$('.selectpicker').selectpicker();
			// $.fn.selectpicker.Constructor.BootstrapVersion = '4';
		});
	});
</script>
<script>
	//Max Height Calculator
	$(document).ready(function () {
		$.fn.equalizeHeights = function () {
			return this.height(Math.max.apply(this, this.map(function () {
				console.log($(this));
				console.log($(this).outerHeight(true));

				return $(this).outerHeight(true);
			})));
		};
		try {
			$('.why-choose-item-title').equalizeHeights();
		} catch (error) {
			console.log('.why-choose-item-title  not defined.');
		}
		try {
			$('.upcoming-courses .card-title').equalizeHeights();
		} catch (error) {

		}

	});

	$(document).ready(function () {
		// executes when HTML-Document is loaded and DOM is ready
		$('.dropdown-menu a.dropdown-toggle').on('click', function (e) {
			if (!$(this).next().hasClass('show')) {
				$(this).parents('.dropdown-menu').first().find('.show').removeClass("show");
			}
			var $subMenu = $(this).next(".dropdown-menu");
			$subMenu.toggleClass('show');


			$(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function (e) {
				$('.dropdown-submenu .show').removeClass("show");
			});


			return false;
		});
		// flip
		try {
			$(function () {
				$(".flip").flip({
					trigger: 'hover',
					axis: 'y'
				});
			});
		} catch (error) {

		}
	});
</script>
</body>

</html>