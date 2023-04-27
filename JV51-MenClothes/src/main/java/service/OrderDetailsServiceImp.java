package service;

import entity.OrderDetails;
import entity.Orderr;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.OrderDetailsRepository;

import java.util.List;

@Service
public class OrderDetailsServiceImp implements OrderDetailsService{
    @Autowired
    public OrderDetailsRepository orderDetailsRepository;

    @Override
    public void addOrderDetails(OrderDetails orderDetails) {
        orderDetailsRepository.save(orderDetails);
    }

    @Override
    public Integer getCountByAccountIdAndProductId(int accountId, int productId) {
        return orderDetailsRepository.getCountByAccountIdAndProductId(accountId,productId);
    }
}
