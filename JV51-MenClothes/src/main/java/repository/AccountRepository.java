package repository;

import entity.OrderDetails;
import entity.Orderr;
import entity.Review;
import entity.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface AccountRepository extends CrudRepository<User, Integer> {
    public User getUserByUsername(String username);
    public User getUserById(int id);

}
