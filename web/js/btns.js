$( document ).ready(function() {
    $('.featuredImg').each(function(i, item){
        setTimeout(function(){
            $(item).addClass('animated bounceInUp');
        }, 100 * i);
    });
});
