package repository;

import entity.OrderDetails;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface OrderDetailsRepository extends CrudRepository<OrderDetails,Integer> {
    @Query("select count(u) from OrderDetails u where u.order.accountId.id = :accountId and u.productId.id = :productId and u.order.statusId.id = 3 ")
    public Integer getCountByAccountIdAndProductId(@Param("accountId") int accountId, @Param("productId") int productId);
}
