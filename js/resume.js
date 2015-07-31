/*
http://caseyb.info - JS foo stuffs
Copyright (C) 2014 Casey Billett
cbillett@xyu.ca

InView - https://github.com/protonet/jquery.inview 
*/

var FadeInTime = 333;
var FadeOutTime = 111;

$(document).ready(function()
{


  $('.job').bind('inview', function(event, isInView)
  {
    if (isInView) { $(this).animate({opacity:1.0}, FadeInTime); }
    else { $(this).animate({opacity:0.5}, FadeOutTime); }
  });

  var shrunk = false; // perf!

  $(window).scroll(function()
  {
      if ($(window).scrollTop() > 50)
      {
        if (!shrunk)
        {
          shrunk = true;
          $('header').addClass('shrink');
        }
      }
      else
      {
        if (shrunk) {
          shrunk = false;
          $('header').removeClass('shrink');
        }
      }
  });

});
