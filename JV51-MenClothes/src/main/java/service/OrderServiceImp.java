package service;

import entity.Orderr;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.OrderRepository;

import java.util.List;

@Service
public class OrderServiceImp implements OrderService{
    @Autowired
    private OrderRepository orderRepository;

    @Override
    public void addOrder(Orderr order) {
        orderRepository.save(order);
    }

    @Override
    public List<Orderr> getOrderrByAccountId(int id) {
        return (List<Orderr>) orderRepository.getOrderrByAccountIdd(id);
    }

    @Override
    public Integer getTimeOrderByAccountId(int id) {
        return orderRepository.getTimeOrderByAccountIdd(id);
    }
}
