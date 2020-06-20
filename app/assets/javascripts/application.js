// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery3
//= require popper
//= require bootstrap
//= require activestorage
//= require_tree .

$(function() {
  $(".bar-alert").delay(3200).slideUp(200, function() {
    $(this).alert('close');
  });

  // Enable Bootstrap tooltips via data-attributes globally
  $('[data-toggle="tooltip"]').tooltip();

  // Enable Bootstrap popovers via data-attributes globally
  $('[data-toggle="popover"]').popover();

  $(".popover-dismiss").popover({
    trigger: "focus"
  });

  // Add active state to sidbar nav links
  var path = window.location.href; // because the 'href' property of the DOM element is the absolute path
  $("#layoutSidenav_nav .sidenav a.nav-link").each(function() {
    if (this.href === path) {
      $(this).addClass("active");
    }
  });

  // Toggle the side navigation
  $("#sidebarToggle").on("click", function(e) {
    e.preventDefault();
    $("body").toggleClass("sidenav-toggled");
  });

  // Activate Bootstrap scrollspy for the sticky nav component
  $("body").scrollspy({
    target: "#stickyNav",
    offset: 82
  });

  // Scrolls to an offset anchor when a sticky nav link is clicked
  $('.nav-sticky a.nav-link[href*="#"]:not([href="#"])').click(function() {
    if (
      location.pathname.replace(/^\//, "") ==
        this.pathname.replace(/^\//, "") &&
      location.hostname == this.hostname
    ) {
      var target = $(this.hash);
      target = target.length ? target : $("[name=" + this.hash.slice(1) + "]");
      if (target.length) {
        $("html, body").animate(
          {
            scrollTop: target.offset().top - 81
          },
          200
        );
        return false;
      }
    }
  });

  // Click to collapse responsive sidebar
  $("#layoutSidenav_content").click(function() {
    const BOOTSTRAP_LG_WIDTH = 992;
    if (window.innerWidth >= 992) {
      return;
    }
    if ($("body").hasClass("sidenav-toggled")) {
        $("body").toggleClass("sidenav-toggled");
    }
  });

  // Init sidebar
  let activatedPath = window.location.pathname.match(/([\w-]+\.html)/, '$1');

  if (activatedPath) {
    activatedPath = activatedPath[0];
  }
  else {
    activatedPath = 'index.html';
  }
    
  let targetAnchor = $('[href="' + activatedPath + '"]');
  let collapseAncestors = targetAnchor.parents('.collapse');
  
  targetAnchor.addClass('active');
  
  collapseAncestors.each(function() {
    $(this).addClass('show');
    $('[data-target="#' + this.id +  '"]').removeClass('collapsed');
     
  })

});