package model;

import java.util.Arrays;
import java.util.List;

public class ProductService {

    public List<Product> productList;

    public ProductService() {
        this.productList = Arrays.asList(
                new Product("Arrow Shacket",19.99,"Jacket","week1/images/mine/arrowShacket.jpg",true),
                new Product("Arrow Shacket - Indigo",19.99,"Jacket","week1/images/mine/arrowShacket1.jpg",true),
                new Product("Bomber Jacket",19.99,"Jacket","week1/images/mine/bomberJacker.jpg",true),
                new Product("Denim Jacket",19.99,"Jacket","week1/images/mine/denimJacket.jpg",true),
                new Product("Gulf Jacket",19.99,"Jacket","week1/images/mine/gulfJacket.jpg",true),
                new Product("Parka Jacket",19.99,"Jacket","week1/images/mine/parkaJacket.jpg",true),
                new Product("Pullover Jacket",19.99,"Jacket","week1/images/mine/pulloverJacket.jpg",true),
                new Product("Storm Jacket",19.99,"Jacket","week1/images/mine/Stormjacket.jpg",true),
                new Product("Wolf Pack",19.99,"Jacket","week1/images/mine/wolfPack.jpg",true)

        );
    }

    public List<Product> getProductList() {
        return productList;
    }
}
