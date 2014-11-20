$(document).ready(function(){

  var Favorite = {};


  // MY Forget Password Modal
  $(".reset-link").on("click", function() {
    $('#logModal').modal('hide');
  });
  
  //Autofocus for the Modals
  $('.modal').on('shown.bs.modal', function() {
    $(this).find('[autofocus]').focus();
  });


  // THE CHANGING OF MY NAV-BAR COLOR 
  var scroll_start = 0;
    var startchange = $('#startchange');
    var offset = startchange.offset();

    if (startchange.length){
      $(document).scroll(function() { 
        scroll_start = $(this).scrollTop();
        if(scroll_start > offset.top) {
          $(".navbar-default").css('background', 'rgba(255,255,255,0.85)');
          $('.navbar-default').css('border-bottom-color', 'rgba(0, 0, 0, 0.0980392)');
          $('.navbar-brand').css('color', 'gray');
          $('.navbar-nav > li > a').css('color', 'gray');
        } else {
          $('.navbar-default').css('background-color', 'transparent');
          $('.navbar-default').css('border-bottom-color', 'rgba(0, 0, 0, 0)');
          $(".navbar-default").css('background', 'none ');
          $('.navbar-brand').css('color', 'white');
          $('.navbar-nav > li > a').css('color', 'white');
        }
      });
    }//end of start changed





// Favorite.addFav = function() {
//   console.log(this);
//   $.post('/favorites', {favorite: {roi: roi} }).done(function(fav) {
//     Favorite.loadFavs();
//   }); 
// };

// Favorite.loadFavs = function() { // Fetch all the books
//   $("#myFavs").remove(); //clear out books
//   $.get("/favorite").done(function(favs){ // AJAX request
//     favs.forEach(function(fav){ // iterate through the books our AJAX returned
//       var list = "<li>"+fav.roi+"</li>";
//       $("#myFavs").append(list);
//     });
//   });
// };


  
});//DOCUMENT CLOSED




