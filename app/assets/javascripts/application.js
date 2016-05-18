// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

// var putTimeToScreen = function(timer){
//   $("#timer").html(timer)
// }
//
// var startTimer = function(){
//   var timer = 0;
     var doSomethingElse = function() {

     };

     var doSomething = function() {
       doSomethingElse()
     }

     window.setInterval(doSomething, 1000)
//   window.setInterval(
//     function(){
//       timer += 1
//       putTimeToScreen(timer)
//     }, 1000)
// }
//
// $( document ).ready(
//   function() {
//     console.log( "ready!" );
//     startTimer();
//   }
// );
