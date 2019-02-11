$(document).ready(function(){
  $('#productList').on('click','.cart',function(){
      //grab nearest col
      $col = $(this).closest('.col-lg');

      item = $col.find('.item').text();
      cost = $col.find('.cost').text();
      //grabs images name not actual images
      img = $col.find('img').attr('src');

      $('#cartTableBody').append('<tr><td><images src = '+ img +'>');

      // updateCart([item,cost,images]);

  });




//doc.ready()
});
