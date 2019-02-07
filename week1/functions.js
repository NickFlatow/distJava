window.onload = function () {
    if (localStorage.getItem("hasCodeRunBefore") === null) {
        let shoppingCart = [];
        localStorage.setItem("hasCodeRunBefore", true);
    }
}

function updateCart(cartObject){
  shoppingCart.push(cartObject);
}
