package repository;

import entity.ImageProduct;
import entity.Product;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ProductRepository extends CrudRepository<Product, Integer> {
    @Query("SELECT sum(u.quantity) From Product u where u.categoryId.name = :categoryName")
    public Integer TotalProductInCategory(@Param("categoryName") String categoryName);
}
