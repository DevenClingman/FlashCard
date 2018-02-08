$( document ).ready(function() 
{
  $('.switch').click(function() 
  {
    $(".card-question").toggle();
    $(".card-answer").toggle();
  });

  $('.button-switch').click(function()
  {
    if($('.card-answer').is(':visible'))
    {
      $(".card-question").toggle();
      $(".card-answer").toggle();
    }
  });
});

