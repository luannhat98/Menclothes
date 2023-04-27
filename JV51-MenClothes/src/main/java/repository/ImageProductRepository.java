package repository;

import entity.ImageProduct;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ImageProductRepository extends CrudRepository<ImageProduct, Integer> {
    @Query("SELECT u FROM ImageProduct u where u.represent = 1")
    public List<ImageProduct> ListImageHomePage();

    @Query("select u from ImageProduct u where u.productId.categoryId.name = :categoryName and u.represent = 1")
    public List<ImageProduct> ListImageHomePageSeachCategory(@Param("categoryName") String categoryName);

    @Query("select u from ImageProduct u where u.productId.name like CONCAT('%',:productName,'%') and u.represent = 1 or u.productId.categoryId.name like CONCAT('%',:categoryName,'%') and u.represent = 1")
    public List<ImageProduct> getSeachProduct(@Param("productName") String productName,@Param("categoryName") String categoryName);

    @Query("select u from ImageProduct u where u.productId.price > :min and u.productId.price < :max and u.represent=1")
    public List<ImageProduct> getSeachProductPrice(@Param("min") float min,@Param("max") float max);

    @Query("SELECT u FROM ImageProduct u where u.productId.id =:productId")
    public List<ImageProduct> getProductDetails(@Param("productId") int productId);

    @Query("select count(u) from ImageProduct u where u.represent=1")
    public Integer getTotalProduct();
}
