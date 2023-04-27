package repository;


import entity.ImageProduct;
import entity.ProductSizeColor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ProductSizeColorRepository extends CrudRepository<ProductSizeColor, Integer> {

    @Query("select u from ProductSizeColor u where u.productId.id = :id")
    public List<ProductSizeColor> productSizeColor(@Param("id") int id);

    @Query("select sum(u.quantity) from ProductSizeColor u where u.productId.id = :id")
    public Integer getQuantityProduct(@Param("id") int id);

    @Query("select u from ProductSizeColor u where u.productId.id = :id and u.colorId.id = :colorId and u.sizeId.id = :sizeId")
    public ProductSizeColor getIdProductSizeColor(@Param("id") int id,@Param("colorId") int colorId,@Param("sizeId") int sizeId);

    public ProductSizeColor getProductSizeColorById(int id);

    @Query("select u.quantity from ProductSizeColor u where u.productId.id = :id and u.sizeId.id = :sizeId and u.colorId.id = :colorId")
    public Integer getQuantityByProductSizeColor(@Param("id") int id,@Param("sizeId") int sizeId,@Param("colorId") int colorId);

}
