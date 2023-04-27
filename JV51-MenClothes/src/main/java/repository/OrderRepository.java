package repository;

import entity.Orderr;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface OrderRepository extends CrudRepository<Orderr, Integer> {
    @Query("select u from Orderr u where u.accountId.id = :id order by u.id desc ")
    public List<Orderr> getOrderrByAccountIdd(@Param("id") int id);

    @Query("select count(u) from Orderr u where u.accountId.id = :id")
    public Integer getTimeOrderByAccountIdd(@Param("id") int id);
}
