$(document).ready(function(){
  setInterval(function(){
    $("#slider").animate({"margin-left": 100}, 300, function(){
      $("#slider").animate({"margin-left": 0}, 300);
      });
  }, 600);
});

