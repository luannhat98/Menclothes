package repository;

import entity.Promo;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface PromoRepository extends CrudRepository<Promo, Integer> {
    public Promo getPromoByCode(String code);
}
