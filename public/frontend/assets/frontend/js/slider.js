jQuery(document).ready(function($) {
  var jssor_1_SlideshowTransitions = [
    {
      $Duration: 800,
      $Delay: 40,
      $Cols: 10,
      $Rows: 5,
      $Opacity: 2,
      $Clip: 15,
      $Easing: $Jease$.$InSine
    }
  ];

  var options = {
    $AutoPlay: 1, //[Optional] Auto play or not, to enable slideshow, this option must be set to greater than 0. Default value is 0. 0: no auto play, 1: continuously, 2: stop at last slide, 4: stop on click, 8: stop on user navigation (by arrow/bullet/thumbnail/drag/arrow key navigation)
    $AutoPlaySteps: 1, //[Optional] Steps to go for each navigation request (this options applys only when slideshow disabled), the default value is 1
    $Idle: 2000, //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
    $PauseOnHover: 1, //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, 4 freeze for desktop, 8 freeze for touch device, 12 freeze for desktop and touch device, default value is 1

    $ArrowKeyNavigation: 1, //[Optional] Steps to go for each navigation request by pressing arrow key, default value is 1.
    $SlideEasing: $Jease$.$OutQuint, //[Optional] Specifies easing for right to left animation, default value is $Jease$.$OutQuad
    $SlideDuration: 800, //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
    $MinDragOffsetToSlide: 20, //[Optional] Minimum drag offset to trigger slide, default value is 20
    // $SlideWidth: 600, //[Optional] Width of every slide in pixels, default value is width of 'slides' container
    // $SlideHeight: 450, //[Optional] Height of every slide in pixels, default value is height of 'slides' container
    $SlideSpacing: 0, //[Optional] Space between each slide in pixels, default value is 0
    $UISearchMode: 1, //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, arrow navigator container, thumbnail navigator container etc).
    $PlayOrientation: 1, //[Optional] Orientation to play slide (for auto play, navigation), 1 horizental, 2 vertical, 5 horizental reverse, 6 vertical reverse, default value is 1
    $DragOrientation: 1, //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $Cols is greater than 1, or parking position is not 0)
    $SlideshowOptions: {
      $Class: $JssorSlideshowRunner$,
      $Transitions: jssor_1_SlideshowTransitions,
      $TransitionsOrder: 1
    },
    $ArrowNavigatorOptions: {
      //[Optional] Options to specify and enable arrow navigator or not
      $Class: $JssorArrowNavigator$, //[Requried] Class to create arrow navigator instance
      $ChanceToShow: 2, //[Required] 0 Never, 1 Mouse Over, 2 Always
      $Steps: 1 //[Optional] Steps to go for each navigation request, default value is 1
    },

    $BulletNavigatorOptions: {
      //[Optional] Options to specify and enable navigator or not
      $Class: $JssorBulletNavigator$, //[Required] Class to create navigator instance
      $ChanceToShow: 2, //[Required] 0 Never, 1 Mouse Over, 2 Always
      $Steps: 1, //[Optional] Steps to go for each navigation request, default value is 1
      $SpacingX: 12, //[Optional] Horizontal space between each item in pixel, default value is 0
      $Orientation: 1 //[Optional] The orientation of the navigator, 1 horizontal, 2 vertical, default value is 1
    }
  };

  var jssor_slider1 = new $JssorSlider$("slider1_container", options);

  //responsive code begin
  // you can remove responsive code if you don't want the slider scales while window resizing
  function ScaleSlider() {
    var parentWidth = jssor_slider1.$Elmt.parentNode.clientWidth;
    console.log(parentWidth);

    if (parentWidth) {
      jssor_slider1.$ScaleWidth(parentWidth - 0);
    } else window.setTimeout(ScaleSlider, 30);
  }
  ScaleSlider();

  $(window).bind("load", ScaleSlider);
  $(window).bind("resize", ScaleSlider);
  $(window).bind("orientationchange", ScaleSlider);
  //responsive code end
});
