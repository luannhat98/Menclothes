package service;

import entity.ProductSizeColor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.ProductSizeColorRepository;

import java.util.List;

@Service
public class ProductSizeColorServiceImp implements ProductSizeColorService {
    @Autowired
    private ProductSizeColorRepository productSizeColorRepository;

    @Override
    public List<ProductSizeColor> productSizeColor(int id) {
        return (List<ProductSizeColor>) productSizeColorRepository.productSizeColor(id);
    }

    @Override
    public Integer getQuantityProduct(int id) {
        return (Integer) productSizeColorRepository.getQuantityProduct(id);
    }

    @Override
    public ProductSizeColor getIdProductSizeColor(int id, int colorId, int sizeId) {
        return (ProductSizeColor) productSizeColorRepository.getIdProductSizeColor(id,colorId,sizeId);
    }

    @Override
    public ProductSizeColor getProductSizeById(int id) {
        return (ProductSizeColor) productSizeColorRepository.getProductSizeColorById(id);
    }

    @Override
    public Integer getQuantityByProductSizeColor(int productId, int sizeId, int colorId) {
        return (Integer) productSizeColorRepository.getQuantityByProductSizeColor(productId,sizeId,colorId);
    }

    @Override
    public void addProductSizeColor(ProductSizeColor productSizeColor) {
        productSizeColorRepository.save(productSizeColor);
    }
}
