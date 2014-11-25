$(document).ready(function(){


/////////////////////////////////////////////////////////////
//GENEARL GOOD STUFF WAHOOOOO!!!!!
////////////////////////////////////////////////////////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////////////////

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


  // ThOSE FLASH MESSAGES
  $(".flash").ready(function(){
    $(".flash").delay(1500).slideUp(1500);
  });



/////////////////////////////////////////////////////////////
//ADDING TO FAVORITES/DELETING GOOD STUFF
////////////////////////////////////////////////////////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////////////////


//  ADDING TO FAVORITES!


$(".tableData").on("click",'.btn', function(e){
  e.preventDefault();
  var address = (this.parentNode.previousElementSibling.previousElementSibling.previousElementSibling.previousElementSibling.innerText);
  var price = (this.parentNode.nextElementSibling.innerText);
  var link = (this.parentNode.nextElementSibling.nextElementSibling.innerText);
  console.log(address)
  console.log(price)
  console.log(link)
  addFav(price, address, link);
});

function addFav(price, address, link){
    $.post('/favorite', {price: price, address: address, link: link}).done(function(fav) {
      console.log("Succes:" + fav);
      loadFav();
    }); 
  }

function loadFav() {
  $("#myFavs").empty();
  $.get('/favorite/1').done(function(favs){
    favs.forEach(function(fav){
      var list = "<li><a target='_blank' href='"+fav.link+"'>"+fav.address+"</a>-- Price: "+fav.price+"<a class='deleteBtn' data-id='"+fav.id+"'>X</a></li>";
      $("#myFavs").append(list);
    });
  });
}


//DELETING FAVORITES!!!

$('#myFavs').on("click",'.deleteBtn', function(e){
  e.preventDefault();
  deleteFav(this.getAttribute('data-id'));
});

function deleteFav(targetId) {
  $.ajax({
    type: 'delete',
    url: '/favorite/' + targetId
  }).done(function(data){
    var tim = $('.deleteBtn[data-id="'+targetId+'"]');
    console.log(tim);
    tim.parent().remove();
  });
}



/////////////////////////////////////////////////////////////
//MY REFACTURED CODE OF SWTICH'S 
////////////////////////////////////////////////////////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////////////////

var homes = [];

/// THIS IS THE MAIN THING YOOYOYOYOYO
// Adds our input stuff into this Calculator
function add(city, address, price, units, income, taxes, title){
  var downpayment = (price * .33);
  var bills = (units * 5 + income * .1).toFixed(2);
  var repairs = units * 100;

  function vacancy(add) {
    if (city == 'Portland'){
      return (income *.035).toFixed(2);
    } else if (city == 'Las Vegas'){              
      return (income * .08).toFixed(2);
    } else if (city == 'Oakland'){              
      return (income * .11).toFixed(2);
    } else { 
      return 0;   
    }
  };
    

//This is the mortgage calculator
//got off internet!
  function mortgage(price, downpayment){
    var loanAmount = price - downpayment;
    var a = loanAmount;
    var b = 4.25;
    var c = 30;
    var n = c * 12;
    var r = b/(12*100);
    var p = (a * r *Math.pow((1+r),n))/(Math.pow((1+r),n)-1);
    var prin = Math.round(p*100)/100;
    return (prin);
  };

  var cashFlow = ((-1 * taxes)/12 - mortgage(price, downpayment) - bills - repairs - vacancy(city) + income).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');
  var rateReturn = ((cashFlow * 12) / price * 100).toFixed(2);

  homes[homes.length] = {
    id: homes.length,
    city: city,
    address: address,
    price: '$' + price.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,'),
    units: units,
    income: '$' + income,
    taxes: '$' + taxes,
    downpayment: '$' + downpayment.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,'),
    mortgage: '$' + mortgage(price, downpayment).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,'),
    bills: '$' + bills,
    repairs: '$' + repairs,
    vacancy: '$' + vacancy(city),
    cashflow: '$' + cashFlow,
    rate: rateReturn +'%',
    title: title
  };
  
  list(homes);

  function list(homes) {
  $('.tableData').empty();
  var whatever = homes;
    whatever.forEach(function(whatever) {
      $(".tableData").append
      ("<tr>"  
      + "<td id='tablerate'>" + whatever.rate + "</td>" 
      + "<td id='tableaddress'><a target='_blank' href="+whatever.address+">"+whatever.title+"</a></td>" 
      + "<td id='tabledownpayment'>"+ whatever.downpayment + "</td>" 
      + "<td id='tablemortgage'>"+ whatever.mortgage + "</td>" 
      + "<td id='tableincome'>"+ whatever.cashflow 
      + "</td>"+"<td id='tablebutton'><button id='addFav' class='btn'>Favorite</button>" 
      + "<td id='tableprice'  style='display: none; other-property: value;''>" + whatever.price + "</td>"
      +"<td id='tablelink'  style='display: none; other-property: value;''>" + whatever.address + "</td>" 
      + "</tr>");
    });
  }
}// end of the add function

$('.addtolist').on("submit", function(e){
  e.preventDefault();
  homes = [];
  var city = $('#city').val();
  // var newCity = city.toLowerCase();
  getHouses(city);
});

// function toTitleCase(str) {
//   return str.replace(/\w\S*/g, function(txt){return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();});
// }



function getHouses(place) {
  $.get('/houses').done(function(houses){
    houses.forEach(function(house){
      if (place === house.city){
        var city = house.city;
        var address = house.address;
        var price = parseInt(house.price);
        var units = parseInt(house.units);
        var income = parseInt(house.income);
        var taxes = parseInt(house.taxes);
        var title = house.title;
        add(city, address, price, units, income, taxes, title);
      }
    });
  });
}



/////////////////////////////////////////////////////////////
//ELIE'S KEYWORD SEARCH AJAX STUFF WORK ON LATER
////////////////////////////////////////////////////////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////////////////

// function getHouses() {
//   return $.get('/houses').done(function(){
//   });
// }

// $.when(getHouses()).done(function(houses){
//   houses.forEach(function(house){
//       var city = house.city;
//       var address = house.address;
//       var price = parseInt(house.price);
//       var units = parseInt(house.units);
//       var income = parseInt(house.income);
//       var taxes = parseInt(house.taxes);
//       add(city, address, price, units, income, taxes);
//     });
// });

});//DOCUMENT CLOSED




