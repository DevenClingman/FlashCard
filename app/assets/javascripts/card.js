$(document).on('turbolinks:load', function() 
{
  $('.switch').click(function() 
  {
    $(".card-question").toggle();
    $(".card-answer").toggle();
  });
});

