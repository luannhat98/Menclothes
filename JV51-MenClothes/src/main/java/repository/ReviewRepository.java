package repository;

import entity.Orderr;
import entity.Review;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ReviewRepository extends CrudRepository<Review, Integer> {
    @Query("select u from Review u where u.productId.id = :id")
    public List<Review> getReviewByIdProduct(@Param("id") int id);

    @Query("select COUNT(u) from Review u where u.productId.id = :productId and u.accountId.id =:accountId")
    public Integer getCountByProductIdAndAccountId(@Param("accountId") int accountId, @Param("productId") int productId);

    @Query("select sum(u.star) from Review u where u.productId.id = :id")
    public float getTotalStarByIdProduct(@Param("id") int id);

    @Query("select COUNT(u) from Review u where u.productId.id = :id")
    public float getTimeOfReviewByIdProduct(@Param("id") int id);
}
