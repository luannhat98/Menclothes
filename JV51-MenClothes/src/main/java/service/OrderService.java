package service;

import entity.Orderr;

import java.util.List;

public interface OrderService {
    public void addOrder(Orderr order);
    public List<Orderr> getOrderrByAccountId(int id);
    public Integer getTimeOrderByAccountId(int id);
}
