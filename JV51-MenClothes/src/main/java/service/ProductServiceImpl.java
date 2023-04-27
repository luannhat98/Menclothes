package service;

import entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.ProductRepository;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;
@Service
public class ProductServiceImpl implements ProductService{
    @Autowired
    private ProductRepository productRepository;
    @Override
    public List<Product> getAllProduct() {
        return (List<Product>)productRepository.findAll();
    }

    @Override
    public Integer TotalProductInCategory(String categoryName) {
        return productRepository.TotalProductInCategory(categoryName);
    }

    @Override
    public void addProduct(Product product) {
        productRepository.save(product);
    }
}
