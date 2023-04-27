package service;

import entity.OrderDetails;
import entity.Product;
import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import repository.OrderDetailsRepository;

import java.util.List;

public interface OrderDetailsService {
    public void addOrderDetails(OrderDetails orderDetails);
    public Integer getCountByAccountIdAndProductId(int accountId, int productId);
}
