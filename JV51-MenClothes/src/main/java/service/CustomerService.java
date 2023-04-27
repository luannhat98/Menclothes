package service;

import entity.Customer;

public interface CustomerService {
    public void addCustomer(Customer customer);
    public Customer getCustomerById(int id);
}
