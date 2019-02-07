$(document).ready(function(){
  $('#productList').on('click','.cart',function(){
      //grab nearest col
      $col = $(this).closest('.col-lg');

      item = $col.find('.item').text();
      cost = $col.find('.cost').text();
      //grabs img name not actual img
      img = $col.find('img').attr('src');

      $('#cartTableBody').append('<tr><td><img src = '+ img +'>');

      // updateCart([item,cost,img]);

  });




//doc.ready()
});
