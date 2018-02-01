$( document ).ready(function() {
  $('.angle-down').click(function() {
    $(this).next().slideToggle(500);
  });
});

