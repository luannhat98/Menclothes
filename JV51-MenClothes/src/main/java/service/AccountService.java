package service;

import entity.User;

import java.util.List;

public interface AccountService {
    public void addAccount(User account);
    public List<User> viewAllAccount();
    public User getUserByUserName(String username);
    public User getUserById(int id);
}
