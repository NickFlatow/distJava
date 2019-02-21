package model;

public class Product {

    private String name;
    private Double cost;
    private String type;
    private String img;
    private Boolean sale;

    public Product(String name, Double cost, String type, String img, Boolean sale) {
        this.name = name;
        this.cost = cost;
        this.type = type;
        this.img = img;
        this.sale = sale;
    }

    public String getName() {
        return name;
    }

    public Double getCost() {
        return cost;
    }

    public String getType() {
        return type;
    }

    public String getImg() {
        return img;
    }

    public Boolean getSale() {
        return sale;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setCost(Double cost) {
        this.cost = cost;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setSale(Boolean sale) {
        this.sale = sale;
    }
}
