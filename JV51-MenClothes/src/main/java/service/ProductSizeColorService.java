package service;

import entity.ProductSizeColor;

import java.util.List;

public interface ProductSizeColorService {
    public List<ProductSizeColor> productSizeColor(int id);
    public Integer getQuantityProduct(int id);
    public ProductSizeColor getIdProductSizeColor(int id, int colorId, int sizeId);
    public ProductSizeColor getProductSizeById(int id);
    public Integer getQuantityByProductSizeColor(int ProductId, int SizeId, int ColorId);
    public void addProductSizeColor(ProductSizeColor productSizeColor);
}
