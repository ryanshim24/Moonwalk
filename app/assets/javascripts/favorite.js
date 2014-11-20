// $(document).ready(function(){

// var Favorite = {};

//  Favorite.addFav = function() {
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

// });