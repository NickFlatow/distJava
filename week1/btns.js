$(document).ready(function(){
  $('#productList').on('click','.cart',function(){
      //grab nearest col
      $col = $(this).closest('.col-lg');

      item = $col.find('.item').text();
      cost = $col.find('.cost').text();
      //grabs img name not actual img
      img = $col.find('img').attr('src');

      updateCart([item,cost,img]);

      // $('#productList').html('<img src ='+ img+'>');
      // .css({"color": "red", "border": "2px solid red"});
  });




//doc.ready()
});
