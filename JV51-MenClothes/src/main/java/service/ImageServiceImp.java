package service;

import entity.ImageProduct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.ImageProductRepository;

import java.util.List;

@Service
public class ImageServiceImp implements ImageService {
    @Autowired
    private ImageProductRepository imageProductRepository;

    @Override
    public List<ImageProduct> getAllimage() {
        return (List<ImageProduct>) imageProductRepository.findAll();
    }

    @Override
    public List<ImageProduct> getImageHomePage() {
        return (List<ImageProduct>) imageProductRepository.ListImageHomePage();
    }

    @Override
    public List<ImageProduct> getImageHomePageSeachCategory(String name) {
        return (List<ImageProduct>) imageProductRepository.ListImageHomePageSeachCategory(name);
    }

    @Override
    public List<ImageProduct> getSeachProduct(String productName, String categoryName) {
        return (List<ImageProduct>) imageProductRepository.getSeachProduct(productName,categoryName);
    }

    @Override
    public List<ImageProduct> getSeachProductPrice(float min, float max) {
        return (List<ImageProduct>) imageProductRepository.getSeachProductPrice(min, max);
    }

    @Override
    public List<ImageProduct> getProductDetails(int id) {
        return (List<ImageProduct>) imageProductRepository.getProductDetails(id);
    }

    @Override
    public Integer getTotalProduct() {
        return imageProductRepository.getTotalProduct();
    }
}
