package service;

import entity.ImageProduct;

import java.util.List;

public interface ImageService {
    public List<ImageProduct> getAllimage();
    public List<ImageProduct> getImageHomePage();
    public List<ImageProduct> getImageHomePageSeachCategory(String name);
    public List<ImageProduct> getSeachProduct(String productName, String categoryName);
    public List<ImageProduct> getSeachProductPrice(float min, float max);
    public List<ImageProduct> getProductDetails(int id);
    public Integer getTotalProduct();
}
