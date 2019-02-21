package model;

import java.util.Arrays;
import java.util.List;

public class ProductService {

    public List<Product> productList;

    public ProductService() {
        this.productList = Arrays.asList(
                new Product("Shirt",20.00,"Clothing","week1/images/shirts.jpg",false)
        );
    }

    public List<Product> getProductList() {
        return productList;
    }
}
