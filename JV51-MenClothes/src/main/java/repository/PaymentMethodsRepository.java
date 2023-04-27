package repository;

import entity.PaymentMethods;
import org.springframework.data.repository.CrudRepository;

public interface PaymentMethodsRepository extends CrudRepository<PaymentMethods, Integer> {
}
