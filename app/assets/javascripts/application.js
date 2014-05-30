// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require imgLiquid-min
//= requrie jquery.als-1.2.min
//= require_tree .

$(function(){
  
  $(document).foundation('orbit', {
    navigation_arrows: false,
    slide_number: false,
    bullets: false,
    timer: false
  }); 
    
  $(document).foundation();
  
  $(".title a").click(function(){
    is_down = $(this).children('i').hasClass("fa-chevron-down");
    if ( is_down == false ) {
      $(".title a i").removeClass("fa-chevron-down").addClass("fa-chevron-right");
      $(this).children('i').removeClass("fa-chevron-right");
      $(this).children('i').addClass("fa-chevron-down");
    }
  });
  
  $('.imgLiquidFill').imgLiquid({
    verticalAlign: '20%'
  });
  
  $(".side-nav li").click(function(){
    var item_id = $(this).attr("id");
    $(".side-nav li").removeClass("active");
    // if (item_id == "hud_program") {
    //       $("#loan_program_iframe").hide();
    //       $("#equity_information").hide();
    //       $("#hud_information").show();
    //     }
    //     else if (item_id == "equity_program") {
    //       $("#hud_information").hide();
    //       $("#loan_program_iframe").hide();
    //       $("#equity_information").show();
    //     }
    //     else {
    //       $("#hud_information").hide();
    //       $("#equity_information").hide();
    //       $("#loan_program_iframe").show();
    //       var loan_program_root_url = "https://s3.amazonaws.com/lighthouse_commercial_production/loan_programs/";
    //       $("#loan_program_iframe").attr('src', loan_program_root_url + item_id + ".pdf");      
    //     }
    var target_div = "#" + item_id + "_information";
    $(".information").hide();
    $(target_div).show();
    $(this).addClass("active");
  });
    
  // $("#als-list").als({
  //  visible_items: 2,
  //  orientation: "horizontal",
  //  circular: "yes",
  //  autoscroll: "yes"
  // });
  
});
