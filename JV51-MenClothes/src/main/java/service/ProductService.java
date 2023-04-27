package service;

import entity.Product;

import java.util.List;

public interface ProductService {
    public List<Product> getAllProduct();
    public Integer TotalProductInCategory(String categoryName);
    public void addProduct(Product product);
}
