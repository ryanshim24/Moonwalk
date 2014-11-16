// $(document).ready(function() {

//   // hide modals
//   $("#logModal").hide();
//   $("#signModal").hide();
//   $("#resetModal").hide();

//   $(".close").on("click", function() {
//     $("#logModal").hide();
//     $("#logModal").hide();
//     $("#resetModal").hide();
//   });

//   $(".log-link").on("click", function(e) {
//     e.preventDefault();

//     $("#logModal").show();
//   });

//   $(".sign-link").on("click", function(e) {
//     e.preventDefault();

//     $("#logModal").show();
  // });

//   $(".reset-link").on("click", function(e) {
//     e.preventDefault();
//     $("#logModal").hide();
//   });


// }); //closing document ready

$(document).ready(function(){

  // $("#signModal").hide();
  // $("#resetModal").hide();

  $(".reset-link").on("click", function() {
    console.log("clicked");
    // $("#logModal")
    
    // $('#logModal').modal('hide');
    $("#logModal").hide();
    $('body').removeClass('modal-open');
    $('.modal-backdrop').remove();
    $("#logModal").attr("aria-hidden", "true");
    $("#logModal").removeClass("in")
    // $("#logModal").modal('hide');
    // $('#resetModal').show();

    // $("#logModal").on('hidden', function(){
    //   $('#resetModal').modal("show");
      

    // });
  });
});
// });